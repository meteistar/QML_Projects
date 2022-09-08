import QtQuick 2.11
import QtQml 2.2
import QtQuick.Controls 2.4

import utils 1.0

Canvas {
    id: root
    width: 150
    height: 150

    //TODO implement canvas circular bar

    antialiasing: true

    property string text: ""

    Label {
        anchors.centerIn: parent
        text: root.text
    }
}
