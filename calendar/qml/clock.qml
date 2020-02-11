import QtQuick 2.12
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.5
import "../"


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
            font.pixelSize: 200
            font.family: webFont.name
            color: "white"
            text: ""
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            visible: true
            antialiasing: true
        }

//        Glow {
//            anchors.fill: digitalClock
//            radius: 1
//            samples: 5
//            color: "grey"
//            source: digitalClock
//        }


        Timer{
            running: true
            interval: 500
            repeat: true
            onTriggered: {
                var date = new Date()
                digitalClock.text = date.toLocaleTimeString(Qt.locale("de_DE"), "hh:mm:ss")
            }
        }

        Text {
            id: element
            x: 397
            y: 79
            color: "#f2e6e6"
            //text: thermostate.temperature
            font.pixelSize: 86
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
