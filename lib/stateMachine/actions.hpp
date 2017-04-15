#ifndef ACTIONS_HPP
#define ACTIONS_HPP
#include "UserDatabase.h"

namespace OsaaMat
{
	const auto buy = []( UserDatabase& db ){ db.subtract( db.credit() );};
	const auto deposit = []( UserDatabase& db ) {db.add( db.credit() );};
	const auto createUser = []( UserDatabase& db ){ db.addUser(); };
}

#endif // ACTIONS_HPP
