import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

import controls 1.0

ApplicationWindow {
    width: 595
    height: 840
    visible: true
    title: qsTr("QML Course")

    ListModel{
        id: listModel
        ListElement{url: "sheets/"; text:"Basic Widgets"}
        ListElement{url: "one"; text:"Advanced Widgets"}
    }

    header: Item{
        width: parent.width
        height: 30

        Rectangle{
            id: fillColorRect
            anchors.fill: parent
            color: "white"
        }

        DropShadow{
            anchors.fill: fillColorRect
            verticalOffset: 3
            radius: 8.0
            samples: 17
            color: "#80000000"
            source: fillColorRect
        }

        Text{
            anchors.centerIn: parent
            text: "Page Title"
        }
    }

    contentData: Item{
        anchors.fill: parent

        Rectangle{
            width: 185
            height: parent.height
            color: "#00D1A9"

            ListView{
                id: listView
                anchors.fill: parent
                anchors.topMargin: 50
                model: listModel
                interactive: false
                spacing: 10
                highlight: Item{
                    width: parent.width
                    height: 47
                    Rectangle{
                        anchors.fill: parent
                        color: "#D1DBE1"
                        opacity: 0.6
                    }
                    Rectangle{
                        width: 4
                        height: parent.height
                        color: "#FFFFFF"
                    }
                }
                delegate: Item{
                    width: parent.width
                    height: 47
                    Text{
                        anchors.centerIn: parent
                        text: model.text
                        color: "#FFFFFF"
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            listView.currentIndex = index;
                        }
                    }
                }
            }
        }

        StackView{
            width: parent.width - listView.width
            height: parent.height
            anchors.right: parent.right
            initialItem: Qt.resolvedUrl("sheets/WidgetsSheet.qml")
        }
    }

//    MouseArea{
//        anchors.fill: parent
//        onClicked: console.log("Clicked on background: Text: ", textEdit.text)
//    }

    TextEdit{
        id: textEdit
        width: 150
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        verticalAlignment: Text.AlignVCenter
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "black"
        }
    }

    MyRadioButton{
        id: myRadioButton
        width: 150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
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
