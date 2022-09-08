import QtQuick 2.11
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0

import utils 1.0
import controls 1.0

Item {
    id: root
    width: parent.width
    height: 402

    property string currentItemName: menuModel.get(listView.currentIndex).text

    signal menuItemClicked(var name)

    ListModel {
        id: menuModel
        ListElement { text: "Dashboard" }
        ListElement { text: "Inbox" }
        ListElement { text: "Calendar" }
        ListElement { text: "Courses" }
        ListElement { text: "Latest News" }
        ListElement { text: "Web Radio" }
    }

    ListView {
        id: listView
        anchors.fill: parent
        highlight: Item {
            width: parent.width
            height: 47
            Rectangle {
                anchors.fill: parent
                color: Style.bgColor
                opacity: 0.6
            }
            Rectangle {
                width: 4
                height: parent.height
                color: "#fff"
            }
        }
        spacing: 20
        model: menuModel

        delegate: ItemDelegate {
            width: parent.width
            height: 47
            contentItem: Item {
                anchors.fill: parent
                Image {
                    id: iconImage
                    width: sourceSize.width
                    height: sourceSize.height
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    anchors.verticalCenter: parent.verticalCenter
                    source: Style.image("mainmenu/"+model.text.toLowerCase())
                    ColorOverlay {
                        anchors.fill: iconImage
                        source: iconImage
                        color: "white"
                    }
                }
                Label {
                    id: label
                    anchors.left: iconImage.right
                    anchors.leftMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 3
                    text: model.text
                    color: "white"
                }
            }

            onClicked: {
                listView.currentIndex = index;
                root.menuItemClicked(label.text);
            }
        }
    }
}
