import QtQuick 2.11

import "mainmenu"

Item {
    id: dashboardAppContent

    Header {
        id: header
        width: (parent.width - mainMenu.width)
        height: 70
        anchors.left: mainMenu.right
        z: 10000
        menuItemText: mainMenu.currentItemName
        //TODO implement reorderSwitchVisible property
    }

    MainMenu {
        id: mainMenu
        width: 285
        height: parent.height
        onMenuItemClicked: {
            mainContent.state = name;
        }
    }

    MainContent {
        id: mainContent
        width: (parent.width - mainMenu.width)
        height: (parent.height - header.height)
        anchors.left: mainMenu.right
        anchors.top: header.bottom
    }
}
