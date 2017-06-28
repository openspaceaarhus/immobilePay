#ifndef ACTIONS_HPP
#define ACTIONS_HPP
#include "UserDatabase.h"
#include "events.hpp"

namespace OsaaMat
{
	const auto buy = []( const AcceptPurchase& e, UserDatabase& db ){ db.subtract( e.price );};
	const auto deposit = []( const AcceptAmount& e, UserDatabase& db ) {db.add( e.credits );};
	const auto createUser = []( UserDatabase& db ){ db.addUser(); };
}

#endif // ACTIONS_HPP
