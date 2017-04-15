import QtQuick 2.0

Rectangle {
	width: 100
	height: 62
	radius: height/4
	color: gray
	property alias text: textField.text
	property alias font: textField.font
	Text
	{
		id: textField
		anchors.centerIn: parent
		font.pointSize: 12
	}
	MouseArea
	{
		anchors.fill: parent
		id: buttonPush
	}
}
