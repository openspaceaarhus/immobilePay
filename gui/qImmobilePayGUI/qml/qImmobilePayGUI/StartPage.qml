import QtQuick 2.0
import "imports/Immobile"

Rectangle {
	id: rootItem
	width: 1600
	height: 900
	Text
	{
		anchors.centerIn: parent
		font.family: Constants.fontLoader.name
		text: "Please scan RFID"
		font.pixelSize: parent.width / 20
	}
}
