import QtQuick 2.11

BaseSheet {
    id: root
    clip: true

    GridView {
        id: grid
        width: 360
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        cellWidth: 120
        cellHeight: 120
        model: 100
        delegate: Rectangle {
            width: grid.cellWidth
            height: grid.cellHeight
            color: Qt.rgba(Math.random(), Math.random(),Math.random(),1);
            border.color: "black"
            Rectangle {
                id: dimming
                width: parent.width
                height: 40
                anchors.bottom: parent.bottom
                color: "black"
                opacity: 0.2
            }
            Text {
                anchors.centerIn: dimming
                text: index
            }
        }
    }
}
