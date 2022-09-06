import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea{
        anchors.fill: parent
        onClicked: console.log("Clicked on background: Text: ", textEdit.text, "devam ediyourum")
    }

    TextEdit{
        id: textEdit
        width: 150
        height: 40
        anchors.centerIn: parent
        verticalAlignment: Text.AlignVCenter
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "black"
        }
    }
}
