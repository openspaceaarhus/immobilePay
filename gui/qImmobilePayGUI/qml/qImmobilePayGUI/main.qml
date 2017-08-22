import QtQuick 2.0
import "imports/Immobile"

Rectangle {
	id: rootElement
	width: Constants.width
	height: Constants.height

		Rectangle {
		z: 10
		id: headerBox
		color: Constants.neonGrun
		anchors.top: parent.top
		anchors.left: parent.left
		anchors.right: parent.right
		border.color: Constants.techBlack
		height: Constants.headerSize
		Text {
			id: header
			color: Constants.paperWhite
			text: qsTr("Welcome to OSAA")
			font.family: Constants.fontLoader.name
			anchors.horizontalCenter: headerBox.horizontalCenter
			anchors.verticalCenter: headerBox.verticalCenter
			font.pointSize: 32
		}
	}

	Item
	{
		z: 0
		id: informationBox
		anchors.top: headerBox.bottom
		anchors.bottom: footerBox.top
		anchors.left: parent.left
		anchors.right: parent.left

		Column
		{
			id: contentColumn
			y: 0
			Row
			{
				id: stateRow
				x: 0
				height: informationBox.height
				StartPage
				{
					width: rootElement.width
					height: informationBox.height
					active: ( rootElement.state == "StartupState" ) || ( rootElement.state == "" )
					onUserName: rootElement.state = "DepositState"
				}
				DepositPage
				{
					width: rootElement.width
					height: informationBox.height
				}
				PurchasePage
				{
					width: rootElement.width
					height: informationBox.height
				}


			}
			Row
			{
				id: configurationRow
				x:0
				height: informationBox.height
				CreationPage
				{
					width: rootElement.width
					height: parent.height
				}
			}
		}

	}

	Rectangle {
	id: footerBox
	z: 10
	height: 25 //Constants.footerSize
		color: Constants.paperWhite
		anchors.bottom: parent.bottom
		anchors.left: parent.left
		anchors.right: parent.right
		Text {
			id: statusText
			color: "red"
			anchors.centerIn: parent
		}
	}

	states: [
		State {
			name: "StartupState"
			PropertyChanges {
				target: contentColumn
				y: 0 * informationBox.height
			}
			PropertyChanges {
				target: stateRow
				x: 0 * rootElement.width
			}
		},
		State {
			name: "CreateState"
			PropertyChanges {
				target: contentColumn
				y: -1 * informationBox.height
			}
			PropertyChanges {
				target: configurationRow
				x: 0 * rootElement.width

			}
		},
		State {
			name: "DepositState"
			PropertyChanges {
				target: contentColumn
				y: 0 * informationBox.height
			}
			PropertyChanges {
				target: stateRow
				x: -1 * rootElement.width
			}
		},
		State {
			name: "PurchaseState"
			PropertyChanges {
				target: contentColumn
				y: 0 * informationBox.height
			}
			PropertyChanges {
				target: stateRow
				x: -2 * rootElement.width
			}

		}
	]
}
