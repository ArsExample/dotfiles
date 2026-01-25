pragma Singleton

import Quickshell
import QtQuick

Singleton {
	readonly property Rounding rounding: Rounding {}
	readonly property FontSize fontSize: FontSize {}
	readonly property FontFamily fontFamily: FontFamily {}

    component Rounding: QtObject {
        readonly property int small: 12
        readonly property int normal: 17
        readonly property int large: 25
        readonly property int full: 1000
	}

	component FontFamily: QtObject {
        readonly property string mono: "JetBrains Mono NF"
    }

	component FontSize: QtObject {
        readonly property int small: 11
        readonly property int smaller: 12
        readonly property int normal: 13
        readonly property int larger: 15
        readonly property int large: 18
        readonly property int extraLarge: 28
	}

	component Font: QtObject {
        readonly property FontFamily family: FontFamily {}
        readonly property FontSize size: FontSize {}
    }
}
