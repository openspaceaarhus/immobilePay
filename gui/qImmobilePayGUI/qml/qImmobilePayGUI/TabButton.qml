import QtQuick 2.0
import "imports/Immobile"

Item {
	width: 250
	height: 75

	property alias color: tab.color
	//property alias borderColor: tab.border.color
	property alias text: label.text

	signal clicked
	clip:true
	id: rootElement
	Rectangle
	{
		id: tab
		border
		{
			color: Constants.techBlack
			width: rootElement.height * 0.01
		}

		radius: parent.height / 4
		width: parent.width
		height: parent.height + radius

		Text
		{
			id: label
			text: "Deposit"
			anchors.verticalCenterOffset: -parent.radius / 2
			anchors.centerIn: parent
			font.pixelSize: rootElement.height * 0.707
			font.family: Constants.fontLoader.name
		}
	}

	MouseArea
	{
		anchors.fill: parent
		onClicked: rootElement.clicked()
	}
}
