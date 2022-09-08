import QtQuick 2.11
import QtQuick.Controls 2.4

import controls 1.0
import utils 1.0

import "../controls"

BaseCard {
    id: root
    width: 1104
    height: 455

    Label {
        id: titleText
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        text: "Weekly Activity"
        font.pixelSize: Style.fontSizeL
    }

    Image {
        id: graph
        width: sourceSize.width
        height: sourceSize.height
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -80
        source: Style.image("courses/graph")
    }

    Row {
        width: 778
        height: 213
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -55
        spacing: 70
        //TODO implement graph
        Item {
            width: 50
            height: parent.height
            Row {
                spacing: 10
                rotation: 180
                anchors.bottom: parent.bottom
                Rectangle {
                    id: redRect
                    width: 10
                    height: (5 * (Math.random() * 10))
                    radius: 20
                    color: "#FF5900"
                }
                Rectangle {
                    id: yellowRect
                    width: 10
                    height: (5 * (Math.random() * 10))
                    radius: 20
                    color: "#FFE361"
                }
                Rectangle {
                    id: greenRect
                    width: 10
                    height: (5 * (Math.random() * 10))
                    radius: 20
                    color: "#00D1A8"
                }
            }
        }
    }

    HintCard {
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: graph.right
        anchors.leftMargin: 40
    }
}
