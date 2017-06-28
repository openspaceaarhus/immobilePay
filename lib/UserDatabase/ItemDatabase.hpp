#ifndef ITEMDATABASE_HPP
#define ITEMDATABASE_HPP

#include <QString>
#include <QImage>
#include "Valuta.hpp"


class ItemDatabase
{
	public:
		struct Item
		{
			QString name;
			QImage picture;
			QString description;
			Valuta price;
		};

		ItemDatabase();
		ItemDatabase( QString filename );
		Item lookup( QString barcodeNumber );
		bool addItem( QString barcodeNumber, Item item );
};

#endif // ITEMDATABASE_HPP
