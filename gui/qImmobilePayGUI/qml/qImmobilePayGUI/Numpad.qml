import QtQuick 2.0

Grid {
	id:numpadRoot
	property color buttonColor: "gray"
	width: 640
	height: 480
	columns: 3
	columnSpacing: 10
	rowSpacing: 10
	Repeater
	{
		model: 9
		Button
		{
			text: index + 1
			id: numpadButtons
			height: numpadRoot.height/4 - 10
			width: numpadRoot.width/3 - 10
			color: buttonColor
		}
	}
}
