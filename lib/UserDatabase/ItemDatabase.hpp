#ifndef ITEMDATABASE_HPP
#define ITEMDATABASE_HPP

#include <QString>
#include <QImage>
#include "Valuta.hpp"


class ItemDatabase
{
	public:

		ItemDatabase();
		ItemDatabase( QString filename );
		Item lookup( QString barcodeNumber );
		bool addItem( QString barcodeNumber, Item item );
};

#endif // ITEMDATABASE_HPP
