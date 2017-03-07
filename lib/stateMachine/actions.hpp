#ifndef ACTIONS_HPP
#define ACTIONS_HPP
#include "UserDatabase.h"

namespace OsaaMat
{
	const auto buy = []( UserDatabase& db ){ db.subtract( db.credit() );};
	const auto deposit = []() { /* sql update add */ };
	const auto createUser = [](){ /* sql instert into users */ };
}

#endif // ACTIONS_HPP
