import QtQuick 2.11
import QtQuick.Controls 2.4

import utils 1.0

Item {
    id: root

    property string categoryName: categoriesModel.get(listView.currentIndex).name
    property string feedUrl: categoriesModel.get(listView.currentIndex).feed

    ListModel {
        id: categoriesModel
        ListElement { name: "MIT Latest News"; feed: "http://news.mit.edu/rss/feed" }
        ListElement { name: "Reasearch News"; feed: "http://news.mit.edu/rss/research" }
        ListElement { name: "Campus News"; feed: "http://news.mit.edu/rss/campus" }
        ListElement { name: "School of Science"; feed: "http://news.mit.edu/rss/school/science" }
        ListElement { name: "Science, technology, and society"; feed: "http://news.mit.edu/rss/topic/science-technology-and-society" }
    }

    ListView {
        id: listView
        anchors.fill: parent
        orientation: ListView.Horizontal
        spacing: 15
        model: categoriesModel
        delegate: Button {
            width: (categoryNameLabel.contentWidth + 20)
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            background: Item {
                anchors.fill: parent
                Rectangle {
                    anchors.fill: parent
                    radius: 30
                    color: (listView.currentIndex === index) ? Style.inactiveColor : Style.mainColor
                }
            }
            contentItem: Label {
                id: categoryNameLabel
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: name
                color: Style.fontContrastColor
            }
            onClicked: {
                listView.currentIndex = index;
            }
        }
    }
}
