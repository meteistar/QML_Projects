import QtQuick 2.0
import QtQuick.Controls 2.15
//import controls 1.0

BaseSheet {
    id: root

    RadioButton{
        id: myRadioButton
        width: 150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        text: "Radio Button"
    }

    CheckBox{
        id: myCheckBox
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myRadioButton.bottom
        anchors.topMargin: 30
    }

    Switch{
        id: mySwitch
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myCheckBox.bottom
        anchors.topMargin: 30
        text: "Switch me!"

    }

    Button{
        id: myButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mySwitch.bottom
        anchors.topMargin: 30
        text: "Click me!"
    }
}
