#include "UserDatabase.h"
#include <QDebug>


UserDatabase::UserDatabase()
	:currentUser( QString{} )
{
	qDebug() << "writing configuration to :memory";
}

UserDatabase::UserDatabase(QString filename)
{
	qDebug() << "writing configuration to " << filename;
}

bool UserDatabase::exists(QString userNumber)
{
	if ( userNumber == QString{ "00000000" } )
	{
		return false;
	}
	else
	{
		currentUser =  userNumber;
		return users.contains( userNumber );
	}
}

void UserDatabase::add(Valuta amount)
{
	qDebug() << QString( "Adding %1 to %2" ).arg( amount.printOut() ).arg( currentUser );
	database[ currentUser ] += amount;
}

void UserDatabase::subtract( Valuta amount )
{
	qDebug() << QString( "Subtracting %1 from %2" ).arg( amount.printOut() ).arg( currentUser );
	database[ currentUser ] -= amount;
}

bool UserDatabase::addUser()
{
	if ( exists( currentUser ) )
	{
		return false;
	}
	else
	{
		users.append( currentUser );
		database[ currentUser ] = Valuta{ 0 };
		return true;
	}
}

Valuta UserDatabase::credit() const
{
	return database[ currentUser ];
}
