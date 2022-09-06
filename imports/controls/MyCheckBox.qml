import QtQuick 2.11
import QtGraphicalEffects 1.0

Item {
    id: root
    width: 50
    height: 50

    property bool checked: false

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: "#A8A8A8"
        Image {
            id: buttonImage
            width: 30
            height: 30
            anchors.centerIn: parent
            source:  "../../assets/check.png"
            visible: root.checked
            ColorOverlay {
                anchors.fill: buttonImage
                source: buttonImage
                color: "#00D1A9"
                visible: root.checked
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.checked = !root.checked;
        }
    }
}
