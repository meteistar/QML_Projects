import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0

import "../controls"

Item {
    id: root
    width: parent.width
    height: (parent.height - 450)
    anchors.bottom: parent.bottom

    property var webRadioFunctions
    property var animator

    Label {
        id: noConnectionTitle
        visible: (gridView.count === 0)
        anchors.centerIn: parent
        font.family: Style.fontFamilyBold
        font.pixelSize: Style.fontSizeL
        color: Style.mainColor
        text: "Not Connected to the Internet"
    }

    GridView {
        id: gridView
        width: (cellWidth * 6)
        height: parent.height
        contentHeight: ((cellHeight * count) + 331) //1 time cellHeight+top margin
        anchors.left: parent.left
        anchors.leftMargin: 20
        cellWidth: 256
        cellHeight: 256
        clip: true
        //TODO implement model and currentIndex
        model: 30
        currentIndex: 0
        delegate: WebRadioGridDelegate {
            width: gridView.cellWidth
            height: gridView.cellHeight
            //TODO implement is currentStation
            onClicked: {
                //TODO play station
                //TODO animate 3d object each time this is clicked
            }
        }
    }
}
