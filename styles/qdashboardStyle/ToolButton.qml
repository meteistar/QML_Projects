import QtQuick 2.0
import QtQuick.Templates 2.4 as T

import utils 1.0

T.ToolButton {
    id: root
    implicitWidth: 140
    implicitHeight: 40

    background: Item{
        id: background
        anchors.fill: parent
        Image{
            id: iconImg
            source: icon.source
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    contentItem: Item{
        width: (parent.width - iconImg.width)
        height: parent.height
        anchors.left: parent
        anchors.leftMargin: iconImg.width>0 ? (iconImg.width) : 0
        Label{
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            text: root.text
            color: root.pressed ? Style.mainColor : Style.inactiveColor
        }
    }
}
