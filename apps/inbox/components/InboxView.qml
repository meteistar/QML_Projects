import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

import controls 1.0
import utils 1.0

import "../models"
import "../controls"

BaseCard {
    id: root
    width: parent.width
    height: root.fullSize ? (100 * listView.count + 50) : parent.height

    property alias model: listView.model
    property bool fullSize: true

    Label {
        id: tileLabel
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        visible: !root.fullSize
        font.pixelSize: Style.fontSizeL
        font.family: Style.fontFamilyBold
        text: "Inbox (3)"
    }

    ListView {
        id: listView
        anchors.top: root.fullSize ?  parent.top : tileLabel.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors {
            leftMargin: 13
            rightMargin: 13
            topMargin: 13
            bottomMargin: 23
        }
        clip: true
        delegate: InboxViewDelegate {
            fullSize: root.fullSize
            onReplyButtonClicked: {
                //TODO openReplyPopup();
            }
        }
    }
}
