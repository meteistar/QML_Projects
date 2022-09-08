import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0
import controls 1.0

BaseCard {
    id: root
    width: 141
    height: 101

//TODO un-comment these
//    borderImage.border.left: 9
//    borderImage.border.right: 9
//    borderImage.border.top: 9
//    borderImage.border.bottom: 9

    Column {
        anchors.centerIn: parent
        Row {
            spacing: 10
            Rectangle {
                width: 10
                height: 10
                radius: (width / 2)
                color: "#00D1A8"
            }
            Label {
                text: "Done"
            }
        }
        Row {
            spacing: 10
            Rectangle {
                width: 10
                height: 10
                radius: (width / 2)
                color: "#FF5900"
            }
            Label {
                text: "Urgent"
            }
        }
        Row {
            spacing: 10
            Rectangle {
                width: 10
                height: 10
                radius: (width / 2)
                color: "#FFE361"
            }
            Label {
                text: "In Progress"
            }
        }
    }
}
