import QtQuick 2.7

BaseSheet {
    id: root

    Item{
        width: 200
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle{
            id: stick
            width: 10
            height: 250
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            color: "black"
        }

        Image{
            id: windmill
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: stick.top
            anchors.bottomMargin: -width / 2
            width: 200
            height: 200
            source: "../assets/windmill.png"

            RotationAnimator{
                target: windmill
                to: 0
                from: 360
                duration: 1000
                loops: Animation.Infinite
                running: true
            }
        }
    }
}
