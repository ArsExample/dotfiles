import Quickshell
import QtQuick
import "root:/config"


Rectangle {
	property int rectWidth: 50
	property int rectHeight: 40
	required property string content
	color: "#90000000"

	width: rectWidth
	height: rectHeight
	radius: Appearance.rounding.small

	Text {
		anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
		font.pixelSize: Appearance.fontSize.larger
		font.family: Appearance.fontFamily.mono
		color: "#ffffff"
		text: parent.content
	}
}
