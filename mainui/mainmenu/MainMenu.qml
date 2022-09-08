import QtQuick 2.11

import utils 1.0

Item {
    id: root

    property string currentItemName: mainMenuList.currentItemName

    signal menuItemClicked(var name)

    Rectangle {
        id: mainMenuColorFill
        width: parent.width
        height: 878.5
        color: Style.mainColor
        MainMenuList {
            id: mainMenuList
            anchors.centerIn: parent
            onMenuItemClicked: {
                root.menuItemClicked(name);
            }
        }
    }

    Rectangle {
        id: userInfoBg
        width: parent.width
        height: (parent.height - mainMenuColorFill.height)
        anchors.top: mainMenuColorFill.bottom
        color: "white"
    }

    UserInfo {
        anchors.top: userInfoBg.top
        anchors.topMargin: -38
    }
}
