//import QtQuick 2.15
//import QtQuick.Window 2.15
//import controls 1.0

//Window {
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")

//    MouseArea{
//        anchors.fill: parent
//        onClicked: console.log("Clicked on background: Text: ", textEdit.text)
//    }

//    TextEdit{
//        id: textEdit
//        width: 150
//        height: 40
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: parent.top
//        anchors.topMargin: 30
//        verticalAlignment: Text.AlignVCenter
//        Rectangle{
//            anchors.fill: parent
//            color: "transparent"
//            border.width: 1
//            border.color: "black"
//        }
//    }

//    MyRadioButton{
//        id: myRadioButton
//        width: 150
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: textEdit.bottom
//        anchors.topMargin: 30
//        text: "Radio Button"
//    }

//    MyCheckBox{
//        id: myCheckBox
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: myRadioButton.bottom
//        anchors.topMargin: 30
//    }

//    MySwitch{
//        id: mySwitch
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: myCheckBox.bottom
//        anchors.topMargin: 30
//        text: "Switch me!"

//    }

//    MyButton{
//        id: myButton
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: mySwitch.bottom
//        anchors.topMargin: 30
//        text: "Click me!"
//    }
//}
