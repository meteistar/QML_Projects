import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
//import controls 1.0

BaseSheet {
    id: root

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        spacing: 30

        RadioButton{
            id: myRadioButton
            width: 120
            height: 50
            text: "Radio Button"


        }

        CheckBox{
            id: myCheckBox
            width: 50
            height: 50


        }

        Switch{
            id: mySwitch
            width: 170
            height: 30
            text: "Switch me!"

            background: Rectangle {
                id: background
                width: parent.width / 3
                height: parent.height
                color: "transparent"
                border.color: "#A8A8A8"
                radius: width / 3

            }
            indicator: Rectangle {
                id: indicator
                width: background.width / 2
                height: width
                color: "#00D1A9"
                radius: width / 2
                x: mySwitch.checked ? (background.width - width) : 0
                Behavior on x {
                    NumberAnimation{properties: "x"; easing.type: Easing.InOutQuad; duration: 200}
                }
            }
            contentItem: Item {
                anchors.left: background.right
                anchors.leftMargin: 10
                Text {
                    id: switchLabel
                    text: mySwitch.text
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    color: "#A8A8A8"
                }
            }
        }

        Button{
            id: myButton
            width: 120
            height: 40
            text: "Click me !"

        }

        ToolButton{
            width: 120
            height: 40
            text: "Tool Button"
        }

        Slider{
            width: 170
            height: 20
        }

        Label{
            text: "I am a label"
        }

        BusyIndicator{

        }

        Dial{

        }
    }
}
