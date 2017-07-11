pragma Singleton
import QtQuick 2.0

QtObject
{
	property FontLoader fontLoader: FontLoader
	{
		id: osaaFont
		//source: "/home/expert/programmering/Qt/qImmobilePay/qImmobilePay/gui/qImmobilePayGUI/Bender.otf"
		source: "/usr/share/fonts/opentype/Jovanny Lemonad - Bender-Bold.otf"

	}

	//readonly property alias fontFamily: fontLoader.name

	readonly property int width: 800
	readonly property int height: 480

	readonly property int headerSize: 50

	readonly property int footerSize: 25
	readonly property color neonGrun: "#33FF00"
	readonly property color lightGrun: "#55FF33"

	readonly property color techBlack: "#1E1E1E"
	readonly property color paperWhite: "#FFFFFF"

}
