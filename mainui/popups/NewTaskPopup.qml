import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0
import controls 1.0

Popup {
    id: root

    //TODO implement this property
    property var selectedDate

    contentItem: Item {
        anchors.fill: parent
        Label {
            id: titleLabel
            text: "New Task"
            anchors.left: parent.left
            anchors.leftMargin: 50
            anchors.top: parent.top
            anchors.topMargin: 50
        }
        ToolButton {
            width: 32
            height: 32
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 40
            colorize: false
            icon.source: Style.image("controls/close")
            onClicked: { } //TODO close popup
        }
        Column {
            id: contentColumn
            width: parent.width
            height: 200
            anchors.top: titleLabel.bottom
            padding: 50
            spacing: 50
            Label {
                id: date
                width: parent.width
                text: Qt.formatDate(root.selectedDate, "dd MMM")
                font.family: Style.fontFamilyRegular
                color: Style.mainColor
                font.pixelSize: Style.fontSizeL
            }
            TextField {
                id: desc
                width: parent.width
                placeholderText: "00:00 - 00:00 Title"
                font.family: Style.fontFamilyRegular
                color: Style.inactiveColor
                font.pixelSize: Style.fontSizeM
                background: Item { }
            }
        }
        Button {
            id: saveButton
            width: 69
            height: 35
            anchors.top: contentColumn.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Save"
            enabled: (desc.text !== "")
            onClicked: {
                //TODO add to new tasks model
                //TODO close popup
            }
        }
    }
    onClosed: {
        //TODO reset
    }
}
