#ifndef EVENTS_HPP
#define EVENTS_HPP
#include "Valuta.hpp"
#include <QString>

namespace OsaaMat
{
struct Login{ QString userString; };
struct Timeout{};
struct Logout{};
struct CancelUserCreation{};
struct AcceptUserCreation{};
struct Purchase{};
struct AcceptPurchase{ Valuta price = 0; };
struct CancelPurchase{};
struct DepositAmount{ Valuta credits = 0; };
struct AcceptAmount{ Valuta credits = 0; };
struct CancelAmount{};
}
#endif // EVENTS_HPP
