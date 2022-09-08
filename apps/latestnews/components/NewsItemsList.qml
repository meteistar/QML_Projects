import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.XmlListModel 2.0

import utils 1.0

Item {
    id: root
    clip: true

    property string feedmodelSource: ""
    property bool fullSize: true
    property string latestNewsCategoryName: ""
    property int delegateHeight: root.fullSize ? 120 : 95
    property int feedsListContentHeight: (feedModel.count > 0) ? listView.contentHeight : 455

    XmlListModel {
        id: feedModel
        //TODO implement feedModel
    }

    Label {
        width: visible ? (parent.width - 40) : 0
        height: visible ? contentHeight : 0
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: parent
        visible: (feedModel.count === 0)
        font.family: Style.fontFamilyBold
        font.pixelSize: Style.fontSizeL
        wrapMode: Text.WordWrap
        color: Style.mainColor
        text: "Not connected to the Internet or feed cannot be downloaded from source. Please try again later "
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: feedModel
        contentHeight: (count * root.delegateHeight) + (root.fullSize ? 60 : 0)
        delegate: ItemDelegate {
            width: parent.width
            height: root.delegateHeight
            contentItem: Item {
                anchors.fill: parent
                clip: true
                Image {
                    id: divider
                    width: parent.width
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: Style.image("controls/divider")
                }
                BusyIndicator {
                    anchors.centerIn: parent
                    opacity: (feedModel.status === XmlListModel.Loading) ? 1.0 : 0.0
                    visible: opacity > 0.0
                    scale: 0.8
                }
                ColumnLayout {
                    width: parent.width - 60
                    height: root.fullSize ? 95 : 85
                    anchors.top: divider.bottom
                    anchors.topMargin: root.fullSize ? 10 : 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: root.fullSize ? 10 : 0
                    opacity: (feedModel.status === XmlListModel.Loading) ? 0.0 : 1.0
                    Behavior on opacity { NumberAnimation { duration: 300 } }
                    Rectangle {
                        Layout.minimumWidth: (categoryNameLabel.contentWidth + 20)
                        Layout.maximumWidth: (categoryNameLabel.contentWidth + 20)
                        Layout.minimumHeight: 20
                        Layout.maximumHeight: 20
                        radius: 30
                        color: Style.mainColor
                        Label {
                            id: categoryNameLabel
                            anchors.centerIn: parent
                            text: root.categoryName
                            color: Style.fontContrastColor
                        }
                    }
                    Label {
                        Layout.fillWidth: true
                        elide: Text.ElideRight
                        text: title
                    }
                    Label {
                        Layout.fillWidth: true
                        elide: Text.ElideRight
                        color: Style.fontSecondaryColor
                        text: description
                    }
                }
            }
            onClicked: {
                //TODO open URL in browser
            }
        }
    }
}
