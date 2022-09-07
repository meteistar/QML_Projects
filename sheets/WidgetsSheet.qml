import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
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
        width: 120
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mySwitch.bottom
        anchors.topMargin: 30
        text: "Click me!"
        background: Item{
            anchors.fill: parent

            DropShadow{
                anchors.fill: backgroundFill
                verticalOffset: 3
                radius: 8.0
                samples: 17
                color: "#80000000"
                source: backgroundFill
            }

            Rectangle {
                id: backgroundFill
                anchors.fill: parent
                radius: 30
                color: myButton.pressed ? "#A8A8A8" : "#00D1A9"
            }
        }
        contentItem: Item {
            anchors.fill: parent
            Text {
                id: textLabel
                font.pixelSize: 14
                color: "#FFFFFF"
                anchors.centerIn: parent
                text: myButton.text
            }
        }
    }
}
