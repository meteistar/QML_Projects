import QtQuick 2.11
import controls 1.0

BaseSheet {
    id: root
    clip: true

    ListView {
        width: 150
        height: 400
        anchors.centerIn: parent
        model: Model { }
        delegate: Item {
            width: parent.width
            height: 40
            Rectangle {
                id: colorIcon
                width: 20
                height: 20
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
            }
            Column {
                width: (parent.width - colorIcon.width - 30)
                anchors.left: colorIcon.right
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    width: parent.width
                    elide: Text.ElideRight
                    text: "Item: " + model.fruit
                }
                Text {
                    font.pixelSize: 8
                    text: model.price
                }
            }
            Rectangle {
                width: parent.width
                height: 1
                color: "black"
                anchors.bottom: parent.bottom
            }
        }
    }
}
