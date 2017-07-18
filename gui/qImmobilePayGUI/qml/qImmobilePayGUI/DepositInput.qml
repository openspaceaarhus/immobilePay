import QtQuick 2.0
import "imports/Immobile"

Rectangle
{
	id: rootItem
	width: 610
	height: 377
	color: Constants.paperWhite

	property int value: 0

	signal valueAccepted
	signal valueRejected

	Column
	{
		anchors.fill: parent
		Item
		{
			id: rowItem
			width: parent.width
			height: parent.height / 5
			Text
			{
				id: label
				text: rootItem.value
				anchors.rightMargin: 10
				anchors.verticalCenter: parent.verticalCenter
				anchors.right: clear.left
				width: rootItem.width - clear.width - parent.spacing
				height: parent.height
				font
				{
					pixelSize: parent.height
					family: Constants.fontLoader.name
				}
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter

			}
			Button
			{
				id: clear
				height:parent.height
				anchors.right: parent.right
				color: Constants.techBlack
				textColor: Constants.paperWhite
				text: "\u232b"
				onClicked: rootItem.value = 0
			}
		}
		Item
		{
			id: gridItem
			width: rootItem.width
			height: parent.height - rowItem.height - acceptReject.height
			Grid
			{
				id: gridlayout
				anchors.centerIn: parent
				columns: 3
				spacing: rootItem.height / 20
				Repeater
				{
					anchors.centerIn: parent
					model: [ 5, 10, 20, 50, 100, 200 ]
					Button
					{
						text: modelData
						color: Constants.neonGrun
						onClicked: rootItem.value = rootItem.value + modelData
						width: gridItem.width / 3 - 2 * gridlayout.spacing
						height: gridItem.height / 2 - gridlayout.spacing
					}
				}
			}
		}
		Row
		{
			id: acceptReject
			width: parent.width
			height: parent.height / 5
			Button
			{
				font.family: Constants.fontLoader.name
				text: qsTr( "Accept" )
				color: Constants.neonGrun
				width: parent.width/2
				height: parent.height
				onClicked: rootItem.valueAccepted()
			}
			Button
			{
				font.family: Constants.fontLoader.name
				text: qsTr( "Reject" )
				color: Constants.techBlack
				width: parent.width/2
				textColor: Constants.paperWhite
				height: parent.height
				onClicked: rootItem.valueRejected()
			}
		}
	}
}
