import QtQuick 2.11
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.4 as QQC2
import QtQuick.Layouts 1.3

import utils 1.0

Item {
    id: root
    //TODO customize style

    property bool fullSize: true
    property alias selectedDate: calendar.selectedDate
    clip: true
    QQC2.Label {
        id: title
        width: visible ? 105 : 0
        height: visible ? 24 : 0
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        visible: !root.fullSize
        font.pixelSize: Style.fontSizeL
        text: "Calendar"
    }

    Calendar {
        id: calendar
        anchors.top: title.visible ? title.bottom : parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors {
            leftMargin: 40
            rightMargin: 40
            topMargin: 20
            bottomMargin: 20
        }
    }
}
