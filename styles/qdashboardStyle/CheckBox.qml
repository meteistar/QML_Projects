import QtQuick 2.0
import QtQuick.Templates 2.4 as T
import QtGraphicalEffects 1.15

import utils 1.0

T.CheckBox {
    id: root
    implicitWidth: 50
    implicitHeight: 50

    background: Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: Style.inactiveColor
    }

    indicator: Image {
        id: buttonImage
        width: (parent.width - 20)
        height: (parent.height - 20)
        anchors.centerIn: parent
        source:  Style.image("check.png")
        visible: root.checked
        ColorOverlay {
            anchors.fill: buttonImage
            source: buttonImage
            color: Style.mainColor
            visible: root.checked
        }
    }
}
