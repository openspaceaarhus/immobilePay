#ifndef STATEMACHINE_H
#define STATEMACHINE_H

#include <boost/sml.hpp>
#include "actions.hpp"
#include "events.hpp"
#include "guards.hpp"

namespace OsaaMat
{
	struct purchaseMachine
	{
		auto operator()( void )
		{
			using namespace boost::sml;
			return make_transition_table(
					*"Idle"_s		+ event< Login> [ userValid ]				= "LoggedIn"_s
					,"Idle"_s		+ event< Login >[ userInvalid ]				= "NewUser"_s
					,"LoggedIn"_s	+ event< Timeout >							= "Idle"_s
					,"LoggedIn"_s	+ event< Logout >							= "Idle"_s
					,"LoggedIn"_s	+ event< Purchase >							= "Buying"_s
					,"LoggedIn"_s	+ event< DepositAmount >					= "Depositing"_s
					,"Buying"_s		+ event< AcceptPurchase >[ creditOk ]/ buy	= "NewUser"_s
					,"Buying"_s		+ event< CancelPurchase >					= "LoggedIn"_s
					,"Depositing"_s	+ event< AcceptAmount > / deposit			= "LoggedIn"_s
					,"Depositing"_s	+ event< CancelAmount >						= "LoggedIn"_s
					,"NewUser"_s	+ event< AcceptUserCreation > / createUser	= "Idle"_s
					,"NewUser"_s	+ event< CancelUserCreation >				= "Idle"_s
			);

		}
	};
};

#endif // STATEMACHINE_H
