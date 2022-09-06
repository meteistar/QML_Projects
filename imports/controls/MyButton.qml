import QtQuick 2.11

Item {
    id: root
    width: 100
    height: 40

    signal clicked()
    property alias text: textLabel.text

    Rectangle {
        anchors.fill: parent
        radius: 30
        color: "#00D1A9"   
    }

    Rectangle{
        anchors.fill: parent
        radius: 30
        color: "yellow"
        visible: mouse.pressed
    }

    Text {
        id: textLabel
        font.pixelSize: 14
        color: "gray"
        anchors.centerIn: parent
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        onClicked: root.click();
    }
}
