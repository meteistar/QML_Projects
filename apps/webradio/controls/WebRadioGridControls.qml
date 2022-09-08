import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0

Row {
    id: root
    width: 120
    height: 30
    spacing: 10

    property bool playbackStatePlaying: false
    signal playPauseClicked()
    signal previousClicked()
    signal nextClicked()
    signal stopClicked()

    ToolButton {
        width: 30
        height: 30
        colorize: false
        icon.source: Style.image("webradio/previous")
        onClicked: {
            root.previousClicked();
        }
    }

    ToolButton {
        width: 30
        height: 30
        colorize: false
        icon.source: root.playbackStatePlaying ? Style.image("webradio/pause") : Style.image("webradio/play")
        onClicked: { root.playPauseClicked(); }
    }

    ToolButton {
        width: 30
        height: 30
        colorize: false
        icon.source: Style.image("webradio/stop")
        onClicked: { root.stopClicked(); }
    }

    ToolButton {
        width: 30
        height: 30
        colorize: false
        icon.source: Style.image("webradio/next")
        onClicked: { root.nextClicked(); }
    }
}
