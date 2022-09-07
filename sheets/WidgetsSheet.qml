import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
//import controls 1.0

BaseSheet {
    id: root

    RadioButton{
        id: myRadioButton
        width: 120
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myRadioButton.bottom
        anchors.topMargin: 30
        background:     Rectangle {
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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myCheckBox.bottom
        anchors.topMargin: 30
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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mySwitch.bottom
        anchors.topMargin: 30
        text: "Click me !"
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
                id: buttonLabel
                font.pixelSize: 14
                color: "#FFFFFF"
                anchors.centerIn: parent
                text: myButton.text
            }
        }
    }
}
