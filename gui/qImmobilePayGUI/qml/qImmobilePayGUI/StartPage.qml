import QtQuick 2.0
import "imports/Immobile"

Rectangle {
	id: rootItem
	width: 1600
	height: 900
	signal userName( string userString )
	property bool active: true
	Text
	{
		anchors.centerIn: parent
		font.family: Constants.fontLoader.name
		text: "Please scan RFID"
		font.pixelSize: parent.width / 20
	}
	TextInput
	{
		id: line
		focus: rootItem.active
		echoMode: TextInput.NoEcho
		cursorDelegate: Rectangle{
			width: 1
			height: 1
			color: rootItem.color
		}

		onAccepted:
		{
			userName( text )
			text = ""
		}
	}
}
