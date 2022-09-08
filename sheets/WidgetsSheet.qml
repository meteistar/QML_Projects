import QtQuick 2.11
import QtQuick.Controls 2.4
import utils 1.0

BaseSheet {
    id: root

    Column {
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30

        RadioButton {
            text: "Radio Button"
            onCheckedChanged: {
                console.log("radio on");
            }
        }

        CheckBox {
            onCheckedChanged: {
                if (checked) {
                    console.log("check box checked");
                } else {
                    console.log("check box unchecked");
                }
            }
        }

        Switch {
            text: "Switch me!"
            onCheckedChanged: {
                if (checked) {
                    console.log("switch button on");
                } else {
                    console.log("switch button off");
                }
            }
        }

        Button {
            text: "Click Me!"
        }

        ToolButton {
            width: 180
            text: "Tool Button"
            icon.source: Style.image("header/onoff")
        }

        Slider { }

        Label {
            text: "I am a Label!"
        }

        BusyIndicator { }

        Dial { }
    }
}
