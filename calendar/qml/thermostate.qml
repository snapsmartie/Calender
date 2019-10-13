import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.13


Rectangle{
    id: thermoFrame
    width: 1200
    height: 800
    color: "#000000"

    FontLoader { id: webFont; source: "file:///Qt/Fonts/DINPro-Light_13935.ttf" }



    Rectangle {
        id: tempFrame
        height: 250
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 250
        anchors.left: parent.left
        anchors.leftMargin: 250
        anchors.right: parent.right
        anchors.rightMargin: 250

        Rectangle {
            id: tempNumber
            color: "#000000"
            anchors.left: parent.left
            anchors.leftMargin: 150
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: element2
                font.family: webFont.name
                color: "white"
                text: qsTr("21.5")
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 150
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 200
                visible: false
                antialiasing: true
            }

            InnerShadow {
                radius: 3.5
                anchors.fill: element2
                samples: 16
                horizontalOffset: -3
                verticalOffset: 2
                color: "#d0000000"
                antialiasing: true
                source: element2
            }

            Text {
                id: element3
                y: 79
                color: "#ffffff"
                text: qsTr("C")
                anchors.left: element2.right
                anchors.leftMargin: 30
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                font.pixelSize: 100
                visible: false
            }

            InnerShadow {
                radius: 3.5
                anchors.fill: element3
                samples: 16
                horizontalOffset: -3
                verticalOffset: 2
                color: "#d0000000"
                antialiasing: true
                source: element3
            }
        }

        Button {
            id: increase
            width: 100
            height: 100
            text: qsTr("Button")
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
            clip: true
            onClicked: element2.text("23.5")

            Rectangle {
                id: rectangle
                color: "#000000"
                anchors.fill: parent

                Text {
                    id: element
                    x: 0
                    y: 135
                    color: "#f2e6e6"
                    text: qsTr("+")
                    anchors.topMargin: -15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 120
                }
                InnerShadow {
                    anchors.fill: element
                    radius: 3.5
                    samples: 16
                    horizontalOffset: -1
                    verticalOffset: 2
                    color: "#d0000000"
                    antialiasing: true
                    source: element
                }
            }
        }

        Button {
            id: decrease
            y: 425
            width: 100
            height: 100
            text: qsTr("Button")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            clip: false

            Rectangle {
                id: rectangle1
                color: "#000000"
                anchors.fill: parent

                Text {
                    id: element1
                    color: "#f2e6e6"
                    text: qsTr("_")
                    anchors.bottomMargin: 20
                    anchors.topMargin: 0
                    anchors.fill: parent
                    verticalAlignment: Text.AlignBottom
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 120
                }

                InnerShadow {
                    anchors.fill: element1
                    radius: 3.5
                    samples: 16
                    horizontalOffset: -1
                    verticalOffset: 2
                    color: "#d0000000"
                    antialiasing: true
                    source: element1
                }
            }
        }
    }
    Rectangle{
        id:digitalClockLine
        width: parent.width
        color: "blue"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 290
        anchors.top: clockFrame.bottom
        anchors.topMargin: -100
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
