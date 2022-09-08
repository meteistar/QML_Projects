import QtQuick 2.11
import QtQuick.Templates 2.4 as T

import utils 1.0

T.Dial {
    id: root

    implicitWidth: 120
    implicitHeight: 120

    background: Rectangle {
        width: parent.width
        height: width
        radius: (width/2)
        color: "transparent"
        border.width: 5
        border.color: Style.mainColor
    }

    handle: Rectangle {
        width: 12
        height: width
        x: root.background.x + root.background.width / 2 - width / 2
        y: root.background.y + root.background.height / 2 - height / 2
        radius: (handle.width/2)
        border.color: Style.mainColor
        color: Style.bgColor
        scale: root.pressed ? 1.5 : 1
        Behavior on scale { NumberAnimation { duration: 150 } }
        Rectangle {
            width: (handle.width/2)
            height: width
            radius: (width/2)
            anchors.centerIn: parent
            border.color: Style.mainColor
            color: Style.bgColor
        }
        transform: [
            Translate {
                y: -Math.min(root.background.width, root.background.height) * 0.4 + handle.height / 2
            },
            Rotation {
                angle: root.angle
                origin.x: (handle.width/2)
                origin.y: (handle.height/2)
            }
        ]
    }
}
