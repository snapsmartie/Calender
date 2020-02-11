import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.13





Rectangle{
    id: thermoSettingsFrame
    width: 1200
    height: 800
    color: "#000000"

    property string dayTempValue: "23"
    property string nightTempValue: "16"

    Rectangle {
        id: rectangle
        width: 150
        height: 330
        color: "#000000"
        border.color: "#0c0cd9"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: rectangle3.bottom
        anchors.topMargin: 20
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

    Rectangle {
        id: rectangle3
        x: -4
        y: 0
        width: 150
        height: 330
        color: "#000000"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        border.color: "#0c0cd9"
        anchors.leftMargin: 10
        layer.enabled: true
        layer.effect: Glow {
            samples: 25
            radius: 10
            spread: 0.4
            color: "blue"
            transparentBorder: true
        }
        Text {
            id: nightTempText
            x: 99
            y: 320
            color: "#f2e6e6"
            text: qsTr("Night temp")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            font.family: webFont.name
        }

        Text {
            id: nightTemp
            objectName: "nightTemp"
            x: 81
            y: 206
            color: "#f2e6e6"
            text: dayTempValue
            anchors.verticalCenterOffset: -20
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
            font.family: webFont.name
        }

        Button {
            signal buttonPressed(string action)
            id: nightTemp_Up
            x: 64
            y: 102
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.bottom: nightTemp.top
            onClicked: buttonPressed("increaseNight")

            Rectangle {
                id: rectangle4
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image2
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            signal buttonPressed(string action)
            id: nightTemp_Down
            x: 64
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.top: nightTemp.bottom
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: buttonPressed("decreaseNight")

            Rectangle {
                id: rectangle5
                color: "#000000"
                anchors.fill: parent

                Image {
                    id: image3
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 180
                }
            }
        }
    }


    Button {
        id: button4
        x: 553
        y: 562
        width: 250
        height: 60
        text: qsTr("Button")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: pageLoader.source = "thermostate.qml"

        Rectangle {
            id: frame
            width: parent.width
            height: parent.height
            color: "#000000"
            border.width: 1
            border.color: "blue"
            layer.enabled: true
            layer.effect: Glow {
                samples: 25
                radius: 7
                spread: 0.4
                color: "blue"
                transparentBorder: true
            }


            Text {
                id: element4
                color: "#ffffff"
                text: qsTr("Back")
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 40
                font.family: webFont.name
            }
        }
    }


    Rectangle {
        id: rectangle6
        y: -2
        color: "#000000"
        anchors.left: rectangle3.right
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.bottom: rectangle.bottom
        anchors.bottomMargin: 0
        anchors.top: rectangle3.top
        anchors.topMargin: 0
        border.color: "#0c0cd9"
        layer.enabled: true
        layer.effect: Glow {
            samples: 25
            radius: 10
            spread: 0.4
            color: "blue"
            transparentBorder: true
        }

        Text {
            id: start_temp
            color: "#f2e6e6"
            text: "21"
            anchors.top: parent.top
            anchors.topMargin: 120
            anchors.left: parent.left
            anchors.leftMargin: 180
            font.family: webFont.name
            font.pixelSize: 40
        }

        Button {
            id: startTemp_Up
            x: 64
            y: 102
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.horizontalCenter: start_temp.horizontalCenter
            anchors.bottom: start_temp.top
            Rectangle {
                id: rectangle10
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image6
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
            anchors.bottomMargin: 50
        }

        Button {
            id: startTemp_Down
            x: 64
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.horizontalCenterOffset: 0
            anchors.top: start_temp.bottom
            anchors.topMargin: 50
            Rectangle {
                id: rectangle11
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image7
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 180
                }
            }
            anchors.horizontalCenter: start_temp.horizontalCenter
        }

        Text {
            id: stopTempText
            x: 99
            color: "#f2e6e6"
            text: qsTr("Start temp")
            anchors.top: start_temp.bottom
            anchors.topMargin: 120
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: start_temp.horizontalCenter
            font.family: webFont.name
            font.pixelSize: 28
        }

        Text {
            id: start_temp1
            x: 81
            y: 1
            color: "#f2e6e6"
            text: nightTempValue
            anchors.right: parent.right
            anchors.rightMargin: 180
            anchors.top: parent.top
            anchors.topMargin: 120
            font.family: webFont.name
            font.pixelSize: 40
        }

        Button {
            id: stopTemp_Up
            x: 65
            y: 103
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.bottom: start_temp1.top
            Rectangle {
                id: rectangle12
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image8
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
            anchors.bottomMargin: 50
            anchors.horizontalCenter: start_temp1.horizontalCenter
        }

        Button {
            id: stopTemp_Down
            x: 65
            y: 1
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.top: start_temp1.bottom
            anchors.topMargin: 50
            Rectangle {
                id: rectangle13
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image9
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 180
                }
            }
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: start_temp1.horizontalCenter
        }

        Text {
            id: startTempText
            x: 100
            color: "#f2e6e6"
            text: qsTr("Stop temp")
            anchors.top: start_temp1.bottom
            anchors.topMargin: 120
            font.family: webFont.name
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: start_temp1.horizontalCenter
            font.pixelSize: 28
        }

        Button {
            id: startTime_Back
            y: 423
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.left: start_temp.right
            anchors.leftMargin: -210
            anchors.bottom: start_temp.top
            Rectangle {
                id: rectangle14
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image10
                    rotation: -90
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                }
            }
            anchors.bottomMargin: -360
        }

        Button {
            id: startTime_Forward
            x: 368
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.right: start_temp.left
            anchors.rightMargin: -210
            anchors.top: start_temp.bottom
            anchors.topMargin: 260
            Rectangle {
                id: rectangle15
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image11
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 90
                }
            }
        }

        Text {
            id: start_Time
            x: 81
            y: 206
            color: "#f2e6e6"
            text: "07:30"
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: startTime_Forward.verticalCenter
            anchors.horizontalCenter: start_temp.horizontalCenter
            font.family: webFont.name
            font.pixelSize: 40
        }

        Text {
            id: startTimeText
            x: 103
            y: 2
            color: "#f2e6e6"
            text: qsTr("Start time")
            anchors.top: start_temp.bottom
            anchors.topMargin: 350
            font.family: webFont.name
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: start_temp.horizontalCenter
            font.pixelSize: 28
        }

        Button {
            id: stopTime_Back
            x: 7
            y: 430
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.left: start_temp1.right
            anchors.bottom: start_temp1.top
            Rectangle {
                id: rectangle16
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image12
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: -90
                }
            }
            anchors.bottomMargin: -360
            anchors.leftMargin: -210
        }

        Button {
            id: stopTime_Forward
            x: 375
            y: 7
            width: 110
            height: 50
            text: qsTr("Button")
            anchors.top: start_temp1.bottom
            anchors.right: start_temp1.left
            anchors.topMargin: 260
            Rectangle {
                id: rectangle17
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image13
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 90
                }
            }
            anchors.rightMargin: -210
        }

        Text {
            id: stop_Time
            x: 88
            y: 213
            color: "#f2e6e6"
            text: "07:30"
            anchors.verticalCenter: stopTime_Back.verticalCenter
            font.family: webFont.name
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: start_temp1.horizontalCenter
            font.pixelSize: 40
        }

        Text {
            id: stopTimeText
            x: 110
            color: "#f2e6e6"
            text: qsTr("Stop time")
            anchors.top: start_temp1.bottom
            anchors.topMargin: 350
            anchors.verticalCenter: start_temp.verticalCenter
            anchors.verticalCenterOffset: 400
            font.family: webFont.name
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: start_temp1.horizontalCenter
            font.pixelSize: 28
        }
    }

    Rectangle {
        id: rectangle8
        x: -8
        y: 2
        color: "#000000"
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: rectangle3.top
        anchors.topMargin: 580
        anchors.left: rectangle3.right
        anchors.bottom: rectangle.bottom
        anchors.bottomMargin: 0
        border.color: "#0c0cd9"
        anchors.leftMargin: 20
        layer.enabled: true
        layer.effect: Glow {
            samples: 25
            radius: 10
            spread: 0.4
            color: "blue"
            transparentBorder: true
        }

        Button {
            id: day_Prev
            width: 80
            text: qsTr("Button")
            anchors.left: parent.left
            anchors.leftMargin: 150
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            rotation: 90
            Rectangle {
                id: rectangle7
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image4
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 180
                }
            }
        }

        Button {
            id: day_Next
            x: 365
            y: 8
            width: 80
            text: qsTr("Button")
            anchors.right: parent.right
            anchors.rightMargin: 150
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            Rectangle {
                id: rectangle9
                color: "#000000"
                anchors.fill: parent
                Image {
                    id: image5
                    x: 0
                    y: -198
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "../images/arrow.png"
                    rotation: 180
                }
            }
            anchors.bottomMargin: 0
            rotation: -90
        }

        Text {
            id: element1
            x: 99
            y: 320
            color: "#f2e6e6"
            text: qsTr("Monday")
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.family: webFont.name
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            font.pixelSize: 45
        }
    }

    Item {
        width: 1200; height: 800

        Loader { id: pageLoader }
    }
}

