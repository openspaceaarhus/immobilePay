#ifndef USERDATABASE_H
#define USERDATABASE_H

#include <QString>
#include "Valuta.hpp"

class UserDatabase
{

	public:
		UserDatabase();
		UserDatabase( QString filename );
		bool exists( QString userNumber );
		void subtract( Valuta amount );
		Valuta credit( void );
};

#endif // USERDATABASE_H
