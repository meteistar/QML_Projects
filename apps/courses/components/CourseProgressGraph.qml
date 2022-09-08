import QtQuick 2.11
import QtQuick.Controls 2.4

import controls 1.0
import utils 1.0
import "../controls"

BaseCard {
    id: root
    width: 552
    height: 390

//TODO un-comment these
//    borderImage.border.left: 9
//    borderImage.border.right: 9
//    borderImage.border.top: 9
//    borderImage.border.bottom: 9

    property bool runAnimations: false

    Label {
        id: titleText
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        text: "Course Activity"
        font.pixelSize: Style.fontSizeL
    }

    Label {
        id: subTitleText
        anchors.top: titleText.bottom
        anchors.topMargin: 60
        anchors.left: parent.left
        anchors.leftMargin: 40
        text: "Week 24"
        font.pixelSize: Style.fontSizeL
    }

    HintCard {
        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.right: parent.right
        anchors.rightMargin: 20
    }

    Row {
        id: progress
        anchors.top: subTitleText.bottom
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        //TODO implement circular bars and animate each time courses page is opened
        CircularBar {
        }
        CircularBar {
        }
        CircularBar {
        }
    }
}
