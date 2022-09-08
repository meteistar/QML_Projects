import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0

import "models"
import "components"

Item {
    id: root
    anchors.fill: parent

    property bool fullSize: true

    EmailsListModel {
        id: emailsModels
    }

    Flickable {
        anchors.fill: parent
        contentHeight: root.fullSize ? mailsColumn.childrenRect.height : parent.height
        interactive: root.fullSize
        clip: true
        Column {
            id: mailsColumn
            anchors.fill: parent
            spacing: Style.resize(20)

            Row {
                leftPadding: Style.resize(60)
                spacing: Style.resize(1400)
                visible: root.fullSize
                Label {
                    font.pixelSize: Style.fontSizeL
                    font.family: Style.fontFamilyBold
                    text: "July"
                }
                Button {
                    width: Style.resize(80)
                    height: Style.resize(40)
                    text: "New"
                    onClicked: {
                        UICommons.newOrReplyEmailPopup.open();
                    }
                }
            }
            InboxView {
                model: emailsModels.julyMailsModel
                fullSize: root.fullSize
            }

            Label {
                visible: root.fullSize
                leftPadding: Style.resize(60)
                font.pixelSize: Style.fontSizeL
                font.family: Style.fontFamilyBold
                text: "June"
            }
            InboxView {
                visible: root.fullSize
                model: emailsModels.juneMailsModel
                fullSize: root.fullSize
            }

            Label {
                visible: root.fullSize
                leftPadding: Style.resize(60)
                font.pixelSize: Style.fontSizeL
                font.family: Style.fontFamilyBold
                text: "May"
            }
            InboxView {
                visible: root.fullSize
                model: emailsModels.mayMailsModel
                fullSize: root.fullSize
            }
            Label {
                visible: root.fullSize
                leftPadding: Style.resize(60)
                font.pixelSize: Style.fontSizeL
                font.family: Style.fontFamilyBold
                text: "April"
            }
            InboxView {
                visible: root.fullSize
                model: emailsModels.aprilMailsModel
                fullSize: root.fullSize
            }
        }
    }
}
