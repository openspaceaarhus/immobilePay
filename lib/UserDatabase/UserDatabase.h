#ifndef USERDATABASE_H
#define USERDATABASE_H

#include <QString>
#include <QStringList>
#include <QMap>
#include "Valuta.hpp"

class UserDatabase
{

	public:
		UserDatabase();
		UserDatabase( QString filename );
		bool exists( QString userNumber );
		void subtract( Valuta amount );
		void add( Valuta amount );
		bool addUser( void );
		Valuta credit( void ) const;
	private:
		QStringList users;
		QString currentUser;
		QMap<QString, Valuta> database;
};

#endif // USERDATABASE_H
