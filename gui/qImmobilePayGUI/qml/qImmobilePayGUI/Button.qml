import QtQuick 2.0

Rectangle {
	width: 100
	height: 62
	radius: height/4
	color: gray
	property alias text: textField.text
	property alias font: textField.font
	property alias textColor: textField.color
	Text
	{
		id: textField
		anchors.centerIn: parent
		font.pointSize: parent.height * 0.707
	}
	MouseArea
	{
		anchors.fill: parent
		id: buttonPush
	}
}
