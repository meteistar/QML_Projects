import QtQuick 2.11
import QtQuick.Controls 2.4

import controls 1.0
import utils 1.0

ItemDelegate {
    id: root
    //TODO set delegate properties from model
    property bool isCurrentStation: false

    background: BaseCard {
        anchors.fill: parent
    }

    contentItem: Item {
        anchors.fill: background
        Rectangle {
            id: stationLogo
            width: 82
            height: 82
            anchors.top: parent.top
            anchors.topMargin: 35
            anchors.horizontalCenter: parent.horizontalCenter
            radius: (width / 2)
            color: "transparent"
            border.color: Style.inactiveColor
            clip: true
            Image {
                anchors.fill: parent
                anchors.margins: 5
                fillMode: Image.PreserveAspectFit
                //source: (model.image !== "") ? model.image : ""
            }
            Image {
                anchors.fill: parent
                anchors.margins: 5
                fillMode: Image.PreserveAspectFit
                //source: (model.image === "") ? Style.image("webradio/genericLogo") : ""
            }
        }
        Image {
            width: 30
            height: 32
            anchors.right: stationLogo.right
            anchors.top: stationLogo.top
            visible: root.isCurrentStation
            fillMode: Image.PreserveAspectFit
            source: Style.image("webradio/music_note_green")
        }
        Column {
            width: (parent.width - 20)
            anchors.top: stationLogo.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            Label {
                id: nameLabel
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                color: root.isCurrentStation ? Style.mainColor : Style.fontPrimaryColor
                //text: model.name + ", " + model.country
            }
            Label {
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                color: Style.fontSecondaryColor
                //text: model.website
            }
        }
    }
}
