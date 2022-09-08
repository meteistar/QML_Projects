import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
//import controls 1.0
import utils 1.0

BaseSheet {
    id: root

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        spacing: 30

        RadioButton{
            id: myRadioButton
            text: "Radio Button"
        }

        CheckBox{
            id: myCheckBox
        }

        Switch{
            id: mySwitch
            text: "Switch me!"
        }

        Button{
            id: myButton
            text: "Click me !"
        }

        ToolButton{
            width: 120
            text: "Tool Button"
            icon.source: Style.image("onoff")
        }

        Slider{
        }

        Label{
            text: "I am a label"
        }

        BusyIndicator{

        }

        Dial{

        }
    }
}
