import QtQuick 2.11

import utils 1.0

Item {
    id: root
    property alias borderImage: borderImage

    BorderImage {
        id: borderImage
        anchors.fill: parent
        source: Style.image("controls/card")
        border.left: 100
        border.right: 100
        border.top: 100
        border.bottom: 100
    }
}
