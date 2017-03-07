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
	private Q_SLOTS:
		void TestStatemacineStartsUpInIdle();

};

TestStatemachine::TestStatemachine()
{
	UserDatabase db;
	machine = std::make_unique< boost::sml::sm< OsaaMat::purchaseMachine > >( db );
}

void TestStatemachine::TestStatemacineStartsUpInIdle()
{
	QVERIFY2(true, "Failure");
}

QTEST_APPLESS_MAIN(TestStatemachine)

#include "tst_TestStatemachine.moc"
