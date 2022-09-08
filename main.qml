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
        Rectangle{
            anchors.fill: parent
            opacity: newOrReplyEmailPopup.visible ? 0.6 : 0
            visible: (opacity > 0.0)
            color: "white"
            Behavior on opacity { NumberAnimation{ duration: 100 }}
        }

        NewOrReplyEmailPopup{
            id: newOrReplyEmailPopup
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            Component.onCompleted: {
                UICommons.newOrReplyEmailPopup = this;
            }
        }
    }
}
