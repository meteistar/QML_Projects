import QtQuick 2.0
import QtQuick.Templates 2.4 as T

import utils 1.0

T.Switch {
    id: root
    implicitWidth: 120
    implicitHeight: 20

    background: Rectangle {
        id: background
        width: parent.width / 3
        height: parent.height
        color: "transparent"
        border.color: Style.inactiveColor
        radius: width / 3

    }
    indicator: Rectangle {
        id: indicator
        width: background.width / 2
        height: width
        color: Style.mainColor
        radius: width / 2
        x: root.checked ? (background.width - width) : 0
        Behavior on x {
            NumberAnimation{properties: "x"; easing.type: Easing.InOutQuad; duration: 200}
        }
    }
    contentItem: Item {
        anchors.left: background.right
        anchors.leftMargin: 10
        Label {
            id: switchLabel
            text: mySwitch.text
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
