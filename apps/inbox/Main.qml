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

    clip: true

    Column {
        anchors.fill: parent
        spacing: 20
        clip: true

        Row {
            leftPadding: 60
            spacing: 1400
            visible: root.fullSize
            Label {
                font.pixelSize: Style.fontSizeL
                font.family: Style.fontFamilyBold
                text: "July"
            }
            Button {
                width: 80
                height: 40
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
            leftPadding: 60
            font.pixelSize: Style.fontSizeL
            font.family: Style.fontFamilyBold
            text: "June"
        }
        InboxView {
            visible: root.fullSize
            model: emailsModels.juneMailsModel
            fullSize: root.fullSize
        }
    }
}
