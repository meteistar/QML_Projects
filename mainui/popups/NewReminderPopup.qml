import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0
import controls 1.0

Popup {
    id: root

    contentItem: Item {
        anchors.fill: parent
        Label {
            id: titleLabel
            text: "New Reminder"
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
            spacing: 10
            TextField {
                id: date
                width: (parent.width - 90)
                placeholderText: "Date"
                font.family: Style.fontFamilyRegular
                color: Style.inactiveColor
                font.pixelSize: Style.fontSizeL
                background: Item { }
            }
            TextField {
                id: desc
                width: (parent.width - 90)
                placeholderText: "Description"
                font.family: Style.fontFamilyRegular
                color: Style.inactiveColor
                font.pixelSize: Style.fontSizeM
                background: Item { }
            }
            Row {
                id: prio
                property string prioColor
                RadioButton {
                    id: doneRadioButton
                    width: 80
                    height: 14
                    checkedColor: "#00D1A8"
                    text: "Done"
                    onClicked: { prio.prioColor = "#00D1A8"; }
                }
                RadioButton {
                    id: inProgressRadioButton
                    width: 130
                    height: 14
                    checkedColor: "#FFE361"
                    text: "In Progress"
                    onClicked: { prio.prioColor = "#FFE361"; }
                }
                RadioButton {
                    id: urgentRadioButton
                    width: 80
                    height: 14
                    checkedColor: "#FF5900"
                    text: "Urgent"
                    onClicked: { prio.prioColor = "#FF5900"; }
                }
            }
        }
        Button {
            id: saveButton
            width: 69
            height: 35
            anchors.top: contentColumn.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Save"
            enabled: (date.text !== "" && desc.text !== "" && prio.prioColor !== "")
            onClicked: {
                //TODO add to reminders model
                //TODO close popup
            }
        }
    }
    onClosed: {
        //TODO reset all
    }
}
