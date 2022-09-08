import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

import utils 1.0

ItemDelegate {
    id: root
    width: parent.width
    height: root.fullSize ? 100 + (root.expand ? (mailContentItemLabel.contentHeight + 20) : 0) : 95
    Behavior on height { NumberAnimation { duration: 50 } }

    //TODO implement expand delegate

    enabled: root.fullSize
    property bool expand: false
    property bool fullSize

    signal replyButtonClicked()

    contentItem: Item {
        anchors.fill: parent
        Image {
            width: (parent.width - 20)
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            source: Style.image("controls/divider")
        }
        RowLayout {
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            spacing: 30
            Rectangle {
                Layout.minimumWidth: 75
                Layout.maximumWidth: 75
                Layout.minimumHeight: 75
                Layout.maximumHeight: 75
                Layout.leftMargin: root.fullSize ? 40 : 20
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: 10
                radius: (width / 2)
                color: "transparent"
                border.color: Style.mainColor
                Label {
                    text: sender.slice(0,1).toUpperCase()
                    font.pixelSize: Style.fontSizeL
                    anchors.centerIn: parent
                    color: Style.mainColor
                }
            }
            Column {
                Layout.minimumWidth: (parent.width - 155)
                Layout.maximumWidth: (parent.width - 155)
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: 10
                spacing: 5
                Label {
                    font.pixelSize: Style.fontSizeS
                    font.family: Style.fontFamilyBold
                    color: Style.fontPrimaryColor
                    text: sender
                }
                Label {
                    width: parent.width
                    height: 14
                    elide: Text.ElideRight
                    color: Style.fontPrimaryColor
                    text: subject
                }
                Label {
                    //TODO implement support for expanding the delegate
                    id: mailContentItemLabel
                    width: parent.width - 20
                    height: root.expand ? contentHeight : 14
                    font.pixelSize: Style.fontSizeS
                    color: Style.fontSecondaryColor
                    elide: root.expand ? Text.ElideNone : Text.ElideRight
                    wrapMode: root.expand ? Text.WordWrap : Text.NoWrap
                    text: content
                }
            }
        }
        Item {
            width: parent.width
            height: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: root.expand ?  20 : 10

            ToolButton {
                width: 90
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 145
                anchors.verticalCenter: parent.verticalCenter
                visible: root.fullSize
                text: "Reply"
                icon.source: Style.image("inbox/reply")
                onClicked: {
                    root.replyButtonClicked();
                }
            }
            Image {
                id: expandIcon
                width: 14
                height: 14
                anchors.centerIn: parent
                visible: (root.fullSize && (mailContentItemLabel.truncated || root.expand))
                rotation: root.expand ? 180 : 0
                Behavior on rotation {NumberAnimation{ duration: 300}}
                source: Style.image("inbox/expand")
            }
        }
    }
    onClicked: {
        ListView.view.currentIndex = index;
        if(expandIcon.visible){
            root.expand = !root.expand
        }
    }
}
