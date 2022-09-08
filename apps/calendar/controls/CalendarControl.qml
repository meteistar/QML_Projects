import QtQuick 2.11
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.4 as QQC2
import QtQuick.Layouts 1.3

import utils 1.0

Item {
    id: root
    //TODO customize style

    property bool fullSize: true
    property alias selectedDate: calendar.selectedDate
    clip: true
    QQC2.Label {
        id: title
        width: visible ? 105 : 0
        height: visible ? 24 : 0
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        visible: !root.fullSize
        font.pixelSize: Style.fontSizeL
        text: "Calendar"
    }

    Calendar {
        id: calendar
        anchors.top: title.visible ? title.bottom : parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors {
            leftMargin: 40
            rightMargin: 40
            topMargin: 20
            bottomMargin: 20
        }
        frameVisible: false
        style: CalendarStyle{
            gridVisible: false
            navigationBar: RowLayout{
                id: navigationBarLayout
                width: parent.width - 40
                height: 46
                QQC2.Label{
                    font.pixelSize: Style.fontSizeL
                    text: styleData.title
                    color: root.fullSize ? Style.fontPrimaryColor : Style.mainColor
                }
                Item{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                QQC2.ToolButton{
                    Layout.minimumWidth: 27
                    Layout.maximumWidth: 27
                    Layout.minimumHeight: 27
                    Layout.maximumHeight: 27
                    colorize: false
                    icon.source: Style.image("calendar/left")
                    onClicked: {
                        calendar.showPreviousMonth();
                    }
                }
                Item{
                    Layout.minimumWidth: 20
                    Layout.maximumWidth: 20
                    Layout.fillHeight: true
                }
                QQC2.ToolButton{
                    Layout.minimumWidth: 27
                    Layout.maximumWidth: 27
                    Layout.minimumHeight: 27
                    Layout.maximumHeight: 27
                    colorize: false
                    icon.source: Style.image("calendar/right")
                    onClicked: {
                        calendar.showNextMonth();
                    }
                }}
                dayOfWeekDelegate: Item{
                    width: parent.width
                    height: 20
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    QQC2.Label{
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: Style.inactiveColor
                        text: calendar.__locale.dayName(styleData.dayOfWeek, calendar.dayOfWeekFormat)

                    }
                }


                dayDelegate: Item{
                    width: 40
                    height: 40
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    Rectangle{
                        width: 37
                        height: 37
                        anchors.centerIn: parent
                        anchors.verticalCenterOffset: -2
                        anchors.horizontalCenterOffset: -0.5
                        radius: (parent.width / 2)
                        color: Style.mainColor
                        visible: styleData.selected

                    }
                }
                QQC2.Label{
                    id: dayLabel
                    anchors.centerIn: parent
                    text: styleData.date.getData()
                    color: styleData.selected ? Style.fontContrastColor : (styleData.visibleMonth && styleData.valid ? Style.fontPrimaryColor : Style.fontSecondaryColor)

                }
                Rectangle{
                    width: 8
                    height: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: dayLabel.bottom
                    radius: width / 2
                    visible: styleData.day.getDate() === 08 ||
                             styleData.day.getDate() === 12 ||
                             styleData.day.getDate() === 15 ||
                             styleData.day.getDate() === 24
                    color: {
                        if(styleData.day.getDate() === 08){
                            return "#00D1A8"
                        } else if(styleData.day.getDate() === 12){
                            return "#FFE361"
                        } else if(styleData.day.getDate() === 15){
                            return "00D1A8"
                        } else if(styleData.day.getDate() === 24){
                            return "#FF5900"
                        } else {
                            return "transparent"
                        }
                    }
                }
            }
        }
    }

