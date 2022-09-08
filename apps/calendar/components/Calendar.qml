import QtQuick 2.11

import controls 1.0

import "../controls"

BaseCard {
    id: root
    width: parent.width
    height: parent.height

    property bool fullSize: true
    property alias calendarSelectedDate: calendarControl.selectedDate

    CalendarControl {
        id: calendarControl
        anchors.fill: parent
        anchors {
            leftMargin: 15
            rightMargin: 15
            topMargin: 10
            bottomMargin: 60
        }
        fullSize: root.fullSize
    }
}
