import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0
import controls 1.0

Popup {
    id: root
    width: 1203
    height: 590

    //TODO implement these properties
    property bool isReply: false
    property string sender: ""
    property string subject: ""

    contentItem: Item {
        anchors.fill: parent
        anchors.margins: 13
        Item {
            id: emailAddressItem
            width: parent.width
            height: 80
            Row {
                anchors.fill: parent
                leftPadding: 20
                spacing: 5
                Label {
                    id: indLabel
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    text: root.isReply ? "Reply " : "To "
                }
                Label {
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    visible: root.isReply
                    color: Style.fontSecondaryColor
                    text: "to: " + root.sender
                }
                TextInput {
                    id: emailAddressTextInput
                    width: (parent.width - indLabel.contentWidth - 10)
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    visible: !root.isReply
                    font.family: Style.fontFamilyRegular
                    color: Style.fontSecondaryColor
                    font.pixelSize: Style.fontSizeM
                }
            }
            ToolButton {
                width: 32
                height: 32
                anchors.right: parent.right
                anchors.rightMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                icon.source: Style.image("controls/close");
                onClicked: { }//TODO close popup
            }
            Image {
                width: parent.width
                anchors.bottom: parent.bottom
                source: Style.image("controls/divider")
            }
        }
        Item {
            id: subjectItem
            width: parent.width
            height: 80
            anchors.top: emailAddressItem.bottom
            TextInput {
                id: subjectTextInput
                leftPadding: 20
                width: (parent.width - leftPadding)
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                text: root.isReply ? "Re: " + root.subject : ""
                font.family: Style.fontFamilyRegular
                color: Style.mainColor
                font.pixelSize: Style.fontSizeM
            }
            Image {
                width: parent.width
                anchors.bottom: parent.bottom
                source: Style.image("controls/divider")
            }
        }
        Item {
            width: parent.width
            anchors.top: subjectItem.bottom
            anchors.bottom: sendButton.top
            TextInput {
                id: contentTextField
                anchors.fill: parent
                anchors.margins: 20
                font.family: Style.fontFamilyRegular
                color: Style.fontPrimaryColor
                wrapMode: Text.WordWrap
                font.pixelSize: Style.fontSizeS
            }
        }
        Button {
            id: sendButton
            width: 71
            height: 35
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            enabled: (root.isReply || (!root.isReply && emailAddressTextInput.text !== ""))
            text: "Send"
            onClicked: {
                //TODO close popup
            }
        }
    }
    onClosed: {
        //TODO reset
    }
}
