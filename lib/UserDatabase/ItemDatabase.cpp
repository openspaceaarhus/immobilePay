#include "ItemDatabase.hpp"
#include <QDebug>

ItemDatabase::ItemDatabase()
{
	qDebug() << "Writing to database :memory";
}

ItemDatabase::ItemDatabase(QString filename)
{
	qDebug() << "Writing to database " << filename;
}

ItemDatabase::Item ItemDatabase::lookup(QString barcodeNumber)
{
	Q_UNUSED( barcodeNumber );
	return Item{};
}

bool ItemDatabase::addItem(QString barcodeNumber, ItemDatabase::Item item )
{
	Q_UNUSED( barcodeNumber );
	Q_UNUSED( item );
	return true;
}
