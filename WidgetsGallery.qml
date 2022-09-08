import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

import controls 1.0
import utils 1.0

ApplicationWindow {
    width: 595
    height: 840
    visible: true
    title: qsTr("QML Course")

    ListModel{
        id: listModel
        ListElement{url: "sheets/WidgetsSheet.qml"; text:"Basic Widgets"}
        ListElement{url: "sheets/GridViewSheet.qml"; text:"Grid View"}
        ListElement{url: "sheets/ListViewSheet.qml"; text:"List View"}
        ListElement{url: "sheets/PathViewSheet.qml"; text:"Path View"}
        ListElement{url: "sheets/WindmillSheet.qml"; text:"Windmill Animation"}
        ListElement{url: "sheets/ParticlesSheet.qml"; text:"Particles"}
    }

    header: Item{
        width: parent.width
        height: 30

        Rectangle{
            width: menuArea.width
            height: parent.height//menuArea.height
            color: Style.mainColor
        }

        DropShadow{
            anchors.fill: fillColorRect
            verticalOffset: 3
            radius: 8.0
            samples: 17
            color: "#80000000"
            source: fillColorRect
        }

        Rectangle{
            id: fillColorRect
            width: parent.width - menuArea.width
            height:  parent.height
            anchors.right: parent.right
            color: "white"
        }
        Label{
            anchors.centerIn: parent
            text: listModel.get(listView.currentIndex).text
        }
    }

    contentData: Item{
        anchors.fill: parent

        Rectangle{
            id: menuArea
            width: 185
            height: parent.height
            color: Style.mainColor

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
                        color: Style.bgColor
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
                            stackView.push(Qt.resolvedUrl(model.url));
                        }
                    }
                }
            }
        }

        StackView{
            id: stackView
            width: parent.width - listView.width
            height: parent.height
            anchors.right: parent.right
            initialItem: Qt.resolvedUrl("sheets/WidgetsSheet.qml")
            popEnter: Transition {
                PropertyAnimation{
                    property: "opacity"
                    from: 0
                    to:1
                    duration: 200
                }

            }
            popExit: Transition {
                PropertyAnimation{
                    property: "opacity"
                    from: 1
                    to:0
                    duration: 200
                }

            }
            pushEnter: Transition {
                PropertyAnimation{
                    property: "opacity"
                    from: 0
                    to:1
                    duration: 200
                }

            }
            pushExit: Transition {
                PropertyAnimation{
                    property: "opacity"
                    from: 0
                    to:1
                    duration: 200
                }

            }
        }
    }


}
