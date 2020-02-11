import QtQuick 2.4
import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.13
import "../"

Rectangle{
    id: thermoFrame
    width: 1200
    height: 800
    color: "#000000"
    z: 2

    FontLoader { id: webFont; source: "file:///Qt/Fonts/DINPro-Light_13935.ttf" }

    Rectangle {
        id: rectangle
        width: 150
        height: 330
        color: "#000000"
        border.color: "#0c0cd9"
        anchors.left: parent.left
        anchors.leftMargin: 500
        anchors.top: parent.top
        anchors.topMargin: 300
        layer.enabled: true
        layer.effect: Glow {
            samples: 25
            radius: 10
            spread: 0.4
            color: "blue"
            transparentBorder: true
        }

        Text {
            id: dayTempText
            x: 99
            y: 320
            color: "#f2e6e6"
            text: qsTr("Day temp")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            font.family: webFont.name
        }

        Text {
            id: dayTemp
            objectName: "dayTemp"
            x: 81
            y: 206
            color: "#f2e6e6"
            text: ""
            anchors.verticalCenterOffset: -20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 40
            font.family: webFont.name
        }

        Button {
            signal buttonPressed(string action)
            id: dayTemp_Up
            objectName: "increaseDay"
            x: 64
            y: 102
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.bottom: dayTemp.top
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: buttonPressed("increaseDay")

            Rectangle {
                id: rectangle1
                color: "#000000"
                anchors.fill: parent

                Image {
                    id: image
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
        }

        Button {
            signal buttonPressed(string action)
            id: dayTemp_Down
            objectName: "decreaseDay"
            x: 64
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.top: dayTemp.bottom
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: buttonPressed("decreaseDay")

            Rectangle {
                id: rectangle2
                color: "#000000"
                anchors.fill: parent

                Image {
                    id: image1
                    x: 0
                    y: -198
                    rotation: 180
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
        }
    }

}

