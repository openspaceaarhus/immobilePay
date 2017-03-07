#ifndef GUARDS_HPP
#define GUARDS_HPP
#include "UserDatabase.h"
#include "events.hpp"
#include <QString>

namespace OsaaMat
{
	const auto creditOk = []( UserDatabase& db, const Purchase& barcode ){ return db.credit() > barcode.price; };
	const auto userValid = []( UserDatabase& db, const Login& userNumber ){ return db.exists( QString( userNumber.userString ) ); };
	const auto userInvalid = []( UserDatabase& db, const Login& userNumber ){ return !db.exists( userNumber.userString ); };
}
#endif // GUARDS_HPP
