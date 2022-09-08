import QtQuick 2.11

import utils 1.0

import "components"
import "../courses/components"

Row {
    id: root
    width: 529
    height: root.fullSize? 389 : parent.height
    spacing: 80

    property bool fullSize: true

    Calendar {
        id: calendarComponent
        fullSize: root.fullSize
    }

    TasksList {
        visible: root.fullSize
        calendarSelectedDate: calendarComponent.calendarSelectedDate
    }

    RemindersList {
        width: 378
        height: 455
        anchors.margins: 15
        visible: root.fullSize
    }
}
