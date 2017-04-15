#ifndef GUARDS_HPP
#define GUARDS_HPP
#include "UserDatabase.h"
#include "events.hpp"
#include <QString>

namespace OsaaMat
{
	const auto creditOk = []( UserDatabase& db, const AcceptPurchase& e ){ return db.credit() > e.price; };
	const auto userValid = []( UserDatabase& db, const Login& e ){ return db.exists( e.userString ); };
	const auto userInvalid = []( UserDatabase& db, const Login& e ){ return !db.exists( e.userString ); };
}
#endif // GUARDS_HPP
