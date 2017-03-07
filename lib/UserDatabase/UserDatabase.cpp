#include "UserDatabase.h"
#include <QDebug>


UserDatabase::UserDatabase()
{
	qDebug() << "writing configuration to :memory";
}

UserDatabase::UserDatabase(QString filename)
{
	qDebug() << "writing configuration to " << filename;
}
