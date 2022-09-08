import QtQuick 2.11
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.4

import utils 1.0

Item {
    id: root
    width: parent.width
    height: 239

    Image {
        width: sourceSize.width
        height: sourceSize.height
        source: Style.image("mainmenu/user")
        anchors.top: parent.top
        anchors.topMargin: -1
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Image {
        id: userImage
        width: sourceSize.width
        height: sourceSize.height
        source: Style.image("mainmenu/outercircle")
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Column {
        width: 200
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: userImage.bottom
        anchors.topMargin: 20
        spacing: 10
        Row {
            spacing: 10
            height: 24
            Item {
                width: 24
                height: 24
                Image {
                    width: sourceSize.width
                    height: sourceSize.height
                    anchors.centerIn: parent
                    source: Style.image("mainmenu/username")
                    layer.enabled: true
                    layer.effect: ColorOverlay {
                        color: Style.mainColor
                    }
                }
            }
            Label {
                id: name
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                text: "John Doe"
                color: Style.mainColor
            }
        }
        Row {
            spacing: 10
            Item {
                width: 24
                height: 24
                Image {
                    width: sourceSize.width
                    height: sourceSize.height
                    anchors.centerIn: parent
                    source: Style.image("mainmenu/location")
                    layer.enabled: true
                    layer.effect: ColorOverlay {
                        color: Style.mainColor
                    }
                }
            }

            Label {
                id: address
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                text: "Barcelona, Spain"
                color: Style.mainColor
                opacity: 0.8
            }
        }
        Row {
            spacing: 10
            Item {
                width: 24
                height: 24
                Image {
                    width: sourceSize.width
                    height: sourceSize.height
                    anchors.centerIn: parent
                    source: Style.image("mainmenu/status")
                    layer.enabled: true
                    layer.effect: ColorOverlay {
                        color: Style.mainColor
                    }
                }
            }

            Label {
                id: status
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                text: "Student"
                color: Style.mainColor
            }
        }
    }
}
