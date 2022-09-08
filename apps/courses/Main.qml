import QtQuick 2.11

import utils 1.0

import "components"

Item {
    id: root
    anchors.fill: parent

    property bool fullSize: true

    Flow {
        anchors.fill: parent
        spacing: 20

        WeeklyActivityGraph {
            visible: root.fullSize
        }

        RemindersList { }

        CourseProgressGraph {
            runAnimations: root.visible
            visible: root.fullSize
        }
    }
}
