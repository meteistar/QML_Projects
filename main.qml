import QtQuick 2.11
import QtQuick.Window 2.11


import utils 1.0
import mainui 1.0

Window {
    id: root
    width: Style.screenWidth
    height: Style.screenHeight
    color: "black"
    visible: true

    //TODO make UI responsive
    //TODO implement second theme switching

    title: qsTr("QML Course")

    Item {
        anchors.fill: parent
        DashboardAppContent {
            id: dashboardAppContent
            anchors.fill: parent
        }
        //TODO implement popups
    }
}
