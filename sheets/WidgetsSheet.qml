import QtQuick 2.0

import controls 1.0

BaseSheet {
    id: root

    MyRadioButton{
        id: myRadioButton
        width: 150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        text: "Radio Button"
    }

    MyCheckBox{
        id: myCheckBox
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myRadioButton.bottom
        anchors.topMargin: 30
    }

    MySwitch{
        id: mySwitch
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myCheckBox.bottom
        anchors.topMargin: 30
        text: "Switch me!"

    }

    MyButton{
        id: myButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mySwitch.bottom
        anchors.topMargin: 30
        text: "Click me!"
    }
}
