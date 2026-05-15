import Quickshell
import Quickshell.Services.UPower
import Quickshell.Services.Pipewire
import Quickshell.Services.Pulseaudio
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

				// content: JSON.stringify(Pipewire.defaultAudioSink?.audio?.volume)
				content: JSON.stringify(Pulseaudio.defaultSink.volume.avg)
				
				// content: {
				// 	var sink = Pipewire.defaultAudioSink
				// 	if (sink && sink.audio) {
				// 		return sink.audio.muted
				// 	}
				// 	return "🎵 ..."
				// }

// 				content: {
// 				var sink = Pipewire.defaultAudioSink
// 				// Проверяем, что sink существует, это аудио-устройство и у него есть каналы
// 				if (sink && sink.audio && sink.audio.volumes && sink.audio.volumes.length > 0) {
// 					var vol = sink.audio.volumes[0] // Берем громкость первого канала
// 					// Проверяем, что громкость - это нормальное число
// 					if (typeof vol === 'number' && !isNaN(vol)) {
// 						if (sink.audio.muted) {
// 							return "🔇 Muted"
// 						} else {
// 							return "🔊 " + Math.round(vol * 100) + "%"
// 						}
// 					}
// 				}
// 				// Если данные невалидны, показываем заглушку, а не NaN
// 				return "🔊 ---"
// }
			}
		}
	}
}
// quickshell 0.2.1-3

