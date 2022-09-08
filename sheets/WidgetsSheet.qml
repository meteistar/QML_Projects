import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
//import controls 1.0

BaseSheet {
    id: root

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        spacing: 30

        RadioButton{
            id: myRadioButton
            width: 120
            height: 50
            text: "Radio Button"


        }

        CheckBox{
            id: myCheckBox
            width: 50
            height: 50


        }

        Switch{
            id: mySwitch
            width: 170
            height: 30
            text: "Switch me!"


        }

        Button{
            id: myButton
            width: 120
            height: 40
            text: "Click me !"

        }

        ToolButton{
            width: 120
            height: 40
            text: "Tool Button"
        }

        Slider{
            width: 170
            height: 20
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
