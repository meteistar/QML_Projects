import QtQuick 2.11
import QtQuick.Controls 2.4

import controls 1.0
import utils 1.0

BaseCard {
    id: root
    width: 378
    height: 455

//TODO un-comment these
//    borderImage.border.left: 9
//    borderImage.border.right: 9
//    borderImage.border.top: 9
//    borderImage.border.bottom: 9

    Column {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        Row {
            spacing: 70
            Label {
                text: "Reminders"
                font.pixelSize: Style.fontSizeL
            }
            Button {
                width: 107
                height: 35
                text: "Add New"
                onClicked: {
                    //TODO newReminderPopup.open();
                }
            }
        }
        ListView {
            id: listView
            width: parent.width
            height: 339
            spacing: 15
            //TODO replace model
            model: 100

            delegate: ItemDelegate {
                width: parent.width
                height: 57

                contentItem: Item {
                    Column {
                        id: dateColumn
                        width: 60
                        height: childrenRect.height
                        anchors.verticalCenter: parent.verticalCenter
                        Label {
                            text: modelData
                            color: Style.fontSecondaryColor
                            font.pixelSize: Style.fontSizeL
                        }
                        Label {
                            text: modelData
                        }
                    }
                    Label {
                        id: descLabel
                        width: 220
                        anchors.left: dateColumn.right
                        anchors.leftMargin: 20
                        anchors.verticalCenter: parent.verticalCenter
                        elide: Text.ElideRight
                        text: modelData
                    }
                    Rectangle {
                        width: 10
                        height: 10
                        x: descLabel.x + descLabel.contentWidth
                        y: 15
                        radius: width / 2
                        color: Style.mainColor
                    }
                }

                onClicked: {
                    listView.currentIndex = index;
                }
            }
        }
    }
}
