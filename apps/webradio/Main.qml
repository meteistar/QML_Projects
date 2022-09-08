import QtQuick 2.11

import "controls"
import "components"

Item {
    id: root
    anchors.fill: parent

    property bool fullSize: true

    RadioControls {
        id: radioControls
        anchors.left: root.fullSize ? parent.left : undefined
        anchors.leftMargin: root.fullSize ? 20 : 0
        fullSize: root.fullSize
        //TODO implement webRadioFunctions and animator properties
    }

    Item {
        width: (parent.width - 529)
        height: 450
        anchors.right: parent.right
        visible: root.fullSize
        Content3D {
            id: musicNote3D
            anchors.centerIn: parent
        }
    }

    RadioStationsGrid {
        id: radioStationsGrid
        visible: root.fullSize
        //TODO implement webRadioFunctions and animator properties
    }
}
