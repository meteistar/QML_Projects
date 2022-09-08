import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

import controls 1.0
import utils 1.0


BaseCard {
    id: root
    width: 378
    height: 569

    property var calendarSelectedDate

    Column {
        id: column
        anchors.fill: parent
        anchors.margins: 40
        spacing: 30
        Row {
            spacing: 130
            Label {
                text: "Tasks"
                font.pixelSize: Style.fontSizeL
            }
            Button {
                width: 107
                height: 35
                text: "Add New"
                onClicked: {
                    //TODO addNewTask();
                }
            }
        }

        Label {
            font.pixelSize: Style.fontSizeL
            color: Style.mainColor
            font.family: Style.fontFamilyBold
            text: Qt.formatDate(root.calendarSelectedDate, "dd MMM")
        }
        Item {
            width: 290
            height: 380
            clip: true
            ListView {
                id: listView
                anchors.fill: parent
                //TODO replace model
                model: 100
                delegate: ItemDelegate {
                    width: (parent.width - 5)
                    height: 60
                    contentItem: RowLayout {
                        anchors.fill: parent
                        Label {
                            Layout.minimumWidth: 100
                            Layout.maximumWidth: 100
                            text: modelData
                            font.pixelSize: Style.fontSizeS
                            color: Style.fontSecondaryColor
                        }
                        Label {
                            Layout.minimumWidth: 150
                            Layout.maximumWidth: 150
                            elide: Text.ElideRight
                            text: " " + modelData
                            font.pixelSize: Style.fontSizeS
                        }
                        Item {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }

                        ToolButton {
                            Layout.minimumWidth: 32
                            Layout.maximumWidth: 32
                            Layout.minimumHeight: 32
                            Layout.maximumHeight: 32
                            Layout.alignment: Qt.AlignRight
                            icon.source: Style.image("controls/close")
                            onClicked: {
                                //TODO removeTaskFromList();
                            }
                        }
                    }

                    onClicked: {
                        listView.currentIndex = index;
                    }
                }
            }
        }
    }
}
