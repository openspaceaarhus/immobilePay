#ifndef USERDATABASE_H
#define USERDATABASE_H

#include <QString>
#include <QStringList>
#include "Valuta.hpp"

class UserDatabase
{

	public:
		UserDatabase();
		UserDatabase( QString filename );
		bool exists( QString userNumber );
		void subtract( Valuta amount );
		bool addUser( void );
		Valuta credit( void );
	private:
		QStringList users;
		QString currentUser;
};

#endif // USERDATABASE_H
