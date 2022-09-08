import QtQuick 2.11
import utils 1.0

Item {
    id: root

    width: parent ? parent.width : 0
    height: parent ? parent.height : 0

    Rectangle {
        anchors.fill: parent
        color: Style.bgColor
    }
}
