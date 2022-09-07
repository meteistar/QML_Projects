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

            background: Rectangle {
                id: fillRect
                width: parent.height
                height: width
                radius: width / 2
                color: "transparent"
                border.color: "#A8A8A8"
            }

            indicator: Rectangle {
                width: (parent.height - 10)
                height: (parent.height - 10)
                anchors.centerIn: fillRect
                radius: width / 2
                visible: myRadioButton.checked
                color: "#00D1A9"
            }

            contentItem: Item{
                width: (parent.width - fillRect.width - 10)
                height: (parent.height)
                anchors.left: fillRect.right
                anchors.leftMargin: 10

                Text {
                    id: textLabel
                    text: myRadioButton.text
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    color: "#A8A8A8"
                }
            }
        }

        CheckBox{
            id: myCheckBox
            width: 50
            height: 50

            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "#A8A8A8"
            }

            indicator: Image {
                id: buttonImage
                width: (parent.width - 20)
                height: (parent.height - 20)
                anchors.centerIn: parent
                source:  "../assets/check.png"
                visible: myCheckBox.checked
                ColorOverlay {
                    anchors.fill: buttonImage
                    source: buttonImage
                    color: "#00D1A9"
                    visible: myCheckBox.checked
                }
            }
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
