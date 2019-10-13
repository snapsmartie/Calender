import QtQuick 2.12
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.5


Rectangle {
    id: keyboardFrame
    width: 1200
    height: 800
    color: "#000000"

    FontLoader { id: webFont; source: "file:///Qt/Fonts/DINPro-Light_13935.ttf" }

    Rectangle{
        id: clockFrame
        height: 400
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 100

        Text {
            id: digitalClock
            font.pixelSize: 240
            font.family: webFont.name
            color: "white"
            text: ""
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            visible: false
            antialiasing: true
        }

        InnerShadow {
            anchors.fill: digitalClock
            radius: 3.5
            samples: 16
            horizontalOffset: -3
            verticalOffset: 2
            color: "#d0000000"
            antialiasing: true
            source: digitalClock
        }


        Timer{
            running: true
            interval: 500
            repeat: true
            onTriggered: {
                var date = new Date()
                digitalClock.text = date.toLocaleTimeString(Qt.locale("de_DE"), "hh:mm:ss")
            }
        }
    }
    Rectangle{
        id:digitalClockLine
        width: parent.width
        color: "blue"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 290
        height:1
        layer.enabled: true
        layer.effect: Glow {
            samples: 25
            radius: 10
            spread: 0.7
            color: "blue"
            transparentBorder: true
        }
    }

}
