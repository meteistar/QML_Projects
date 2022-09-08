import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtMultimedia 5.9

import controls 1.0
import utils 1.0

BaseCard {
    id: root
    width: 529
    height: 455

    //TODO make sure the info is filled out when the model is populated
    //and/or when the current index is changed

    property var webRadioFunctions
    property bool fullSize: true
    property var animator

    Label {
        id: warningLabel
        width: (parent.width - 20)
        height: visible ? 25 : 0
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 35
        //TODO show this only if there is a media error occured
        font.family: Style.fontFamilyBold
        font.pixelSize: Style.fontSizeL
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        color: Style.mainColor
        //TODO implement text
    }

    Item {
        anchors.fill: parent
        Label {
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 40
            font.pixelSize: Style.fontSizeL
            text: root.fullSize ? "Player" : "Web Radio"
        }

        ColumnLayout {
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
            Rectangle {
                id: outline
                Layout.minimumWidth: 155
                Layout.maximumWidth: 155
                Layout.minimumHeight: 155
                Layout.maximumHeight: 155
                radius: (width / 2)
                color: "transparent"
                border.color: Style.inactiveColor
                Layout.alignment: Qt.AlignHCenter
                clip: true
                Image {
                    id: stationLogo
                    anchors.fill: parent
                    anchors.margins: 5
                    fillMode: Image.PreserveAspectFit
                    visible: source !== ""
                    //TODO implement source
                }
            }
            Label {
                id: stationNameLabel
                Layout.minimumWidth: 480
                Layout.maximumWidth: 480
                Layout.minimumHeight: 60
                Layout.maximumHeight: 60
                Layout.alignment: Qt.AlignHCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                color: Style.fontSecondaryColor
                //TODO implement text
            }

            WebRadioGridControls {
                Layout.alignment: Qt.AlignHCenter
                //TODO implement playbackStatePlaying property
                onPlayPauseClicked: {
                    //TODO play or pause current station
                    //TODO animate 3d object each this is clicked
                }
                onPreviousClicked: {
                    //TODO play previous station
                }
                onNextClicked: {
                    //TODO play next station
                }
                onStopClicked: {
                    //TODO stop current station
                }
            }
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                spacing: 10
                Image {
                    Layout.minimumWidth: sourceSize.width
                    Layout.maximumWidth: sourceSize.width
                    Layout.minimumHeight: sourceSize.height
                    Layout.maximumHeight: sourceSize.height
                    Layout.alignment: Qt.AlignVCenter
                    source: Style.image("webradio/speaker")
                }
                Slider {
                    Layout.minimumWidth: 73
                    Layout.maximumWidth: 73
                    Layout.minimumHeight: 8
                    Layout.maximumHeight: 8
                    from: 0.0
                    to: 1.0
                    onValueChanged: {
                        //TODO convert logarithmic to linear and set volume to player
                    }
                }
            }
        }
    }
}
