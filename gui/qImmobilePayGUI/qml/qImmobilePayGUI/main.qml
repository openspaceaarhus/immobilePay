import QtQuick 2.0

Rectangle {
	id: rootElement
	property color neonGrun: "#33FF00"
	property color lightGrun: "#55FF33"

	property color techBlack: "#1E1E1E"
	property color paperWhite: "#FFFFFF"
	width: 800
	height: 480

	FontLoader
	{
		id: osaaFont
		//source: "/home/expert/programmering/Qt/qImmobilePay/qImmobilePay/gui/qImmobilePayGUI/Bender.otf"
		source: "/usr/share/fonts/opentype/Jovanny Lemonad - Bender-Bold.otf"

	}

	Rectangle {
		id: headerBox
		color: neonGrun
		anchors.top: parent.top
		anchors.left: parent.left
		anchors.right: parent.right
		border.color: "#1E1E1E"
		height: 50
		Text {
			id: header
			color: "white"
			text: qsTr("Welcome to OSAA")
			font.family: osaaFont.name
			anchors.horizontalCenter: headerBox.horizontalCenter
			anchors.verticalCenter: headerBox.verticalCenter
			font.pointSize: 32
		}
	}
	Rectangle
	{
		id: informationBox
		color: paperWhite
		anchors.top: headerBox.bottom
		anchors.bottom: footerBox.top
		anchors.left: parent.left
		anchors.right: imaging.left

		Text {
			anchors.top: informationBox.top
			anchors.left: parent.left
			anchors.right: parent.right
			id: informative
			font.family: osaaFont.name
			text: qsTr("Scan RFID")
			wrapMode: Text.WordWrap
			font.pointSize: 21

		}
		Numpad {
			id: numpad
			anchors.top: informative.bottom
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.bottom: acceptReject.top
			visible: false
		}
		Rectangle
		{
			id: itemBox
			anchors.top: informative.bottom
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.bottom: acceptReject.top
			visible: false
			Text
			{
				id: itemDescription
				anchors.top: parent.top
				anchors.left: parent.left
				anchors.right: itemPicture.left
				anchors.bottom: parent.bottom
			}
			Image
			{
				id: itemPicture
    rotation: 0
				anchors.top: parent.top
				anchors.right: parent.right
				anchors.bottom: parent.bottom
				fillMode: PreserveAspectFit
				source: "/home/expert/programmering/Qt/qImmobilePay/qImmobilePay/gui/qImmobilePayGUI/MateEmpty.jpeg"
			}
		}

		Row
		{
			id: acceptReject
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.bottom: parent.bottom
			spacing: 10
			Rectangle
			{
				id:acceptButton
				radius: height/4
				width: parent.width / 2 - 5
				height: 50
				color: "#4fff33"
				Text {
					text: qsTr("Accept")
					font.family: osaaFont.name
					font.pointSize: 12
					anchors.centerIn: parent
				}
				MouseArea
				{
					id: accepted
					anchors.fill: parent
				}

			}

			Rectangle
			{
				id: rejectButton
				radius: height/4
				width: parent.width / 2 - 5
				height: 50
				color: "#ff3358"
				Text {
					text: qsTr("Reject")
					font.family: osaaFont.name
					font.pointSize: 12
					anchors.centerIn: parent
				}
				MouseArea
				{
					id: rejected
					anchors.fill: parent
				}
			}
		}

	}
	Rectangle
	{
		id: imaging
			anchors.right: parent.right
			anchors.top: headerBox.bottom
			anchors.bottom: footerBox.top
			Image{
				id: picture
				fillMode: Image.PreserveAspectFit
				anchors.centerIn: parent
			}
	}
	Rectangle {
		id: footerBox
		height: 25
		color: "#FFFFFF"
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
		},
		State {
			name: "CreateState"

			PropertyChanges {
				target: informative
				text: qsTr("New RFID detected, do you want to create a new user?")
			}
		},
		State {
			name: "DepositState"

			PropertyChanges {
				target: numpad
				visible: true
			}
			PropertyChanges {
				target: informative
				text: qsTr("Enter amount to deposit, or scan barcode to purchase")
			}

		},
		State {
			name: "PurchaseState"

			PropertyChanges {
				target: informative
				text: qsTr("Item Scanned")
			}
			PropertyChanges
			{
				target: itemBox
				visible: true

			}

		}
	]
}
