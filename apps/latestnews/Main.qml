import QtQuick 2.11
import QtQuick.Controls 2.4

import controls 1.0
import utils 1.0

import "components"

BaseCard {
    id: root
    width: parent.width
    height: parent.height
    clip: true

    property bool fullSize: true

    Item {
        anchors.fill: parent

        Label {
            id: tileTitle
            height: visible ? 25 : 0
            visible: !root.fullSize
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.pixelSize: Style.fontSizeL
            text: "Latest News"
        }

        CategoriesList {
            id: categoriesListView
            width: visible ? parent.width : 0
            height: visible ? 60 : 0
            anchors.left: parent.left
            anchors.leftMargin: 40
            visible: root.fullSize
        }

        NewsItemsList {
            id: newsListView
            width: (parent.width - 40)
            height: (parent.height - categoriesListView.height - anchors.topMargin)
            anchors.top: root.fullSize ? categoriesListView.bottom : tileTitle.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: root.fullSize ? 40 : 30
            anchors.horizontalCenter: parent.horizontalCenter
            fullSize: root.fullSize
            //TODO implement feedmodelSource and latestNewsCategoryName
        }
    }
}
