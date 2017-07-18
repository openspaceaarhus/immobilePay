import QtQuick 2.0
import "imports/Immobile"

Rectangle {
	id:rootItem
	width: 610
	height: 377
	color: Constants.paperWhite
	property bool inputActive: false
	Text
	{
		anchors.centerIn: parent
		text: qsTr("Scan barcode to purchase\nor press Deposit")
		font.family: Constants.fontLoader.name
		font.pixelSize: parent.height / 10
	}
	TabButton
	{
		id: tabButton
		onClicked: rootItem.inputActive = !rootItem.inputActive
		anchors.bottom: input.top
		anchors.right: parent.right
		width: parent.width / 4
		height: parent.height / 7
		color: Constants.neonGrun
	}

	DepositInput
	{
		id: input
		anchors.bottom: parent.bottom
		height: rootItem.inputActive ? parent.height - tabButton.height : 1
		width: parent.width
		visible: rootItem.inputActive
		Behavior on height
		{
			NumberAnimation
			{
				easing.type: Easing.InOutQuad
			}
		}
	}
}
