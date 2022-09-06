import QtQuick 2.0

BaseSheet {
    id: root
    clip: true

    ListView{
        width: 150
        height: 400
        anchors.centerIn: parent
        model: 100
        delegate: Item{
            width: parent.width
            height: 40
            Rectangle{
                id: colorIcon
                width: 20
                height: 20
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                color: Qt.rgba(Math.random(),Math.random(),Math.random(),1)
            }
            Text{
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: colorIcon.right
                anchors.leftMargin: 10
                text: "Text " + index
            }
            Rectangle{
                width: parent.width
                height: 1
                color: "black"
                anchors.bottom: parent.bottom
            }
        }
    }
}
