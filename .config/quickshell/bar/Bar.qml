import Quickshell
import Quickshell.Services.UPower
import Quickshell.Services.Pipewire
import QtQuick
import "widgets"
import "services"

Variants{
	model: Quickshell.screens;

	delegate: Component {
		PanelWindow {
			required property var modelData

			screen: modelData

			anchors.top: true
			anchors.left: true
			anchors.right: true
			implicitHeight: 45
			color: "transparent"

			StyledRect {
				id: clock
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.bottom: parent.bottom

				rectWidth: 100
				content: Time.time
			}

			StyledRect{
				id:power
				anchors.bottom: parent.bottom
				anchors.left: clock.right
				anchors.leftMargin: 50

				rectWidth: 60
				content: "󰁹 " + Math.round(UPower.displayDevice.percentage * 100) + "%"

			}

			StyledRect {
				anchors.bottom: parent.bottom
				anchors.left: power.right
				anchors.leftMargin: 150

				content: JSON.stringify(Pipewire.defaultAudioSink.id)
			}
		}
	}
}
// quickshell 0.2.1-3

