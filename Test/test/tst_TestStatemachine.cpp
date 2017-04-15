#include <QString>
#include <QtTest>
#include <memory>

#include "StateMachine.h"
#include "UserDatabase.h"

class TestStatemachine : public QObject
{
		Q_OBJECT

	public:
		TestStatemachine();

	private:
		std::unique_ptr< boost::sml::sm< OsaaMat::purchaseMachine > > machine;
		UserDatabase db;
	private Q_SLOTS:
		void TestStatemacineStartsUpInIdle();
		void TestInvalidUserPutsStateMachineInAddUser();
		void TestRejectUserCreationPutsStateMachineInIdle();
		void TestAcceptUserCreatesANewUser();

};

TestStatemachine::TestStatemachine()
	:db()
{
	machine = std::make_unique< boost::sml::sm< OsaaMat::purchaseMachine > >( db );
}

void TestStatemachine::TestStatemacineStartsUpInIdle()
{
	using namespace boost::sml;
	QVERIFY( machine->is( "Idle"_s ) );
}

void TestStatemachine::TestInvalidUserPutsStateMachineInAddUser()
{
	using namespace boost::sml;
	machine->process_event( OsaaMat::Login{ "00000000" } );
	QVERIFY( machine->is( "NewUser"_s ) );
}

void TestStatemachine::TestRejectUserCreationPutsStateMachineInIdle()
{
	using namespace boost::sml;
	QVERIFY( machine->is( "NewUser"_s ) );
	machine->process_event( OsaaMat::CancelUserCreation{} );
	QVERIFY( machine->is( "Idle"_s ) );
}

void TestStatemachine::TestAcceptUserCreatesANewUser()
{
	using namespace boost::sml;
	machine->process_event( OsaaMat::Login{ "00000001" } );
	QVERIFY( machine->is( "NewUser"_s ) );
	machine->process_event( OsaaMat::AcceptUserCreation{} );
	QVERIFY( machine->is( "Idle"_s ) );
	QVERIFY( db.exists( "00000001" ) );
}

QTEST_APPLESS_MAIN(TestStatemachine)

#include "tst_TestStatemachine.moc"
