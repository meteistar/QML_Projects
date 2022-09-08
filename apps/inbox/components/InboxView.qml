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
    height: root.fullSize ? Style.resize(100 * listView.count + 50) : parent.height

    property alias model: listView.model
    property bool fullSize: true

    Label {
        id: tileLabel
        anchors.top: parent.top
        anchors.topMargin: Style.resize(20)
        anchors.left: parent.left
        anchors.leftMargin: Style.resize(40)
        visible: !root.fullSize
        font.pixelSize: Style.fontSizeL
        font.family: Style.fontFamilyBold
        text: "Inbox (3)"
    }

    ListView {
        id: listView
        anchors.top: root.fullSize ? parent.top : tileLabel.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        interactive: false
        anchors {
            leftMargin: Style.resize(13)
            rightMargin: Style.resize(13)
            topMargin: Style.resize(13)
            bottomMargin: Style.resize(23)
        }
        clip: true
        delegate: InboxViewDelegate {
            fullSize: root.fullSize
            onExpandChanged: {
                listView.interactive = expand;
            }
            onReplyButtonClicked: {
                UICommons.newOrReplyEmailPopup.isReply = true;
                UICommons.newOrReplyEmailPopup.sender = sender;
                UICommons.newOrReplyEmailPopup.subject = subject;
                UICommons.newOrReplyEmailPopup.open();
            }
        }
    }
}
