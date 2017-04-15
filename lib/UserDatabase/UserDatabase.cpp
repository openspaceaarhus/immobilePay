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

bool UserDatabase::addUser()
{
	if ( exists( currentUser ) )
	{
		return false;
	}
	else
	{
		users.append( currentUser );
		return true;
	}
}
