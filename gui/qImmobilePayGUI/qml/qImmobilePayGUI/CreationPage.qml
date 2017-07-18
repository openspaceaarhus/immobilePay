import QtQuick 2.0
import "imports/Immobile"

Rectangle {
	width: 610
	height: 377
	id: rootItem
	Text {
		font.pixelSize: rootItem.height / 10
		font.family: Constants.fontLoader.name
		text: qsTr( "User not recognised.\nAdd new user?" )
		anchors.centerIn: parent
	}
	Row
	{
		anchors.left: parent.left
		anchors.right:parent.right
		anchors.bottom: parent.bottom
		Button{
			font.family: Constants.fontLoader.name
			text: qsTr( "Accept" )
			color: Constants.neonGrun
			width: parent.width/2
		}
		Button{
			font.family: Constants.fontLoader.name
			text: qsTr( "Reject" )
			color: Constants.techBlack
			textColor: Constants.paperWhite
			width: parent.width/2
		}
	}
}
