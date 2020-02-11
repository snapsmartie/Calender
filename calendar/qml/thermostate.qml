import QtQuick 2.4
import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.13
import "../"



Rectangle{
    id: thermoFrame
    objectName: "thermoFrame"
    width: 1200
    height: 800
    color: "#000000"


    FontLoader { id: webFont; source: "file:///Qt/Fonts/DINPro-Light_13935.ttf" }

    // property bool heatVisible: true
    // property string temperature: ""
    // property int setPoint: 20
    // property string dayTempValue: "23"
    // property string nightTempValue: "16"

    //property int marge: 500



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
                id: thermostate_value
                objectName: "thermostate_value"
                font.family: webFont.name
                color: "white"
                text: ""
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -20
                anchors.right: parent.right
                anchors.rightMargin: 150
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 160
                visible: true
                antialiasing: true
            }


            Text {
                id: element3
                y: 79
                color: "#ffffff"
                text: qsTr("C")
                anchors.left: thermostate_value.right
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                font.pixelSize: 100
                visible: true
            }
        }

        Button {
            signal buttonPressed(string action)
            id: increase
            objectName: "increase"
            width: 100
            height: 100
            text: qsTr("Button")
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
            clip: true
            onClicked: buttonPressed("increase")

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
            }
        }

        Button {
            signal buttonPressed(string action)
            id: decrease
            objectName: "decrease"
            y: 425
            width: 100
            height: 100
            text: qsTr("Button")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            clip: false
            onClicked: buttonPressed("decrease")

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
            }
        }
    }
    Rectangle{
        id:digitalClockLine
        objectName: "testertje"
        color: "blue"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
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

    Rectangle {
        id: rectangle2
        width: 100
        height: 100
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 50

        Image {
            id: image
            width: 100
            height: 100
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "../images/heaterOn.png"
        }
    }

    Button {
        signal buttonPressed(string action)
        id: button_scedule
        objectName: "buttonScedule"
        x: 553
        y: 562
        width: 250
        height: 60
        text: qsTr("Button")
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: buttonPressed("buttonScedule")                 //pageLoader.source = "Scedule_Settings.qml"

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
                id: element2
                color: "#ffffff"
                text: qsTr("Schedule")
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 40
                font.family: webFont.name
            }
        }
    }

    Button {
        signal buttonPressed(string action)
        id: button_day
        objectName: "buttonDay"
        x: 552
        y: 570
        width: 250
        height: 60
        text: qsTr("Button")
        anchors.bottom: button_scedule.bottom
        anchors.bottomMargin: 0
        anchors.right: button_scedule.left
        anchors.rightMargin: 15
        visible: true
        onClicked:  buttonPressed("buttonDay")

        Rectangle {
            id: frame1
            width: parent.width
            height: parent.height
            color: "#000000"
            border.width: 1
            layer.effect: Glow {
                color: "#0000ff"
                radius: 7
                transparentBorder: true
                samples: 25
                spread: 0.4
            }
            layer.enabled: true
            border.color: "#0000ff"
            Text {
                id: element4
                color: "#ffffff"
                text: qsTr("Day")
                anchors.fill: parent
                font.pixelSize: 40
                font.family: webFont.name
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }


    Button {
        signal buttonPressed(string action)
        id: button_night
        objectName: "buttonNight"
        y: 575
        width: 250
        height: 60
        text: qsTr("Button")
        anchors.bottom: button_scedule.bottom
        anchors.bottomMargin: 0
        anchors.left: button_scedule.right
        anchors.leftMargin: 15
        visible: true
        onClicked: buttonPressed("buttonNight")

        Rectangle {
            id: frame2
            width: parent.width
            height: parent.height
            color: "#000000"
            border.width: 1
            layer.effect: Glow {
                color: "#0000ff"
                radius: 7
                transparentBorder: true
                samples: 25
                spread: 0.4
            }
            layer.enabled: true
            border.color: "#0000ff"
            Text {
                id: element5
                color: "#ffffff"
                text: qsTr("Night")
                anchors.fill: parent
                font.pixelSize: 40
                font.family: webFont.name
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Text {
        id: elementWeather
        color: "#ffffff"
        text: qsTr("25")
        font.bold: true
        anchors.right: parent.right
        anchors.rightMargin: 90
        horizontalAlignment: Text.AlignRight
        anchors.top: parent.top
        anchors.topMargin: 175
        font.pixelSize: 75
        font.family: webFont.name
        visible: true
    }

    Text {
        id: elementWeather2
        x: 1109
        color: "#ffffff"
        text: qsTr("° C")
        anchors.top: parent.top
        anchors.topMargin: 185
        anchors.right: parent.right
        anchors.rightMargin: 29
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 45
    }

    Image {
        id: image1
        x: 1030
        width: 150
        height: 150
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 29
        antialiasing: true
        fillMode: Image.PreserveAspectFit
        source: "../images/sunCloud.png"
    }

    //**************************settings frame*********************************************//
    Rectangle{
        property int settingsHeight: 900
        id: thermoSettingsFrame
        objectName: "thermoSettingsFrame"
        width: 1200
        height: 800
        color: "#000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: settingsHeight
        anchors.horizontalCenter: parent.horizontalCenter
        z:5

        Rectangle {
            id: rectangle12
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
                objectName: "tempDay"
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
                objectName: "dayIncrease"
                x: 64
                y: 102
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.bottom: dayTemp.top
                anchors.bottomMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: buttonPressed("dayIncrease")

                Rectangle {
                    id: rectangle13
                    color: "#000000"
                    anchors.fill: parent

                    Image {
                        id: image2
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../images/arrow.png"
                    }
                }
            }

            Button {
                signal buttonPressed(string action)
                id: dayTemp_Down
                objectName: "dayDecrease"
                x: 64
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.top: dayTemp.bottom
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: buttonPressed("dayDecrease")

                Rectangle {
                    id: rectangle14
                    color: "#000000"
                    anchors.fill: parent

                    Image {
                        id: image3
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
                objectName: "tempNight"
                x: 81
                y: 206
                color: "#f2e6e6"
                text: ""
                anchors.verticalCenterOffset: -20
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 40
                font.family: webFont.name
            }

            Button {
                signal buttonPressed(string action)
                objectName: "nightIncrease"
                id: nightTemp_Up
                x: 64
                y: 102
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.bottom: nightTemp.top
                onClicked: buttonPressed("nightIncrease")

                Rectangle {
                    id: rectangle4
                    color: "#000000"
                    anchors.fill: parent
                    Image {
                        id: image14
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
                objectName: "nightDecrease"
                id: nightTemp_Down
                x: 64
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.top: nightTemp.bottom
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: buttonPressed("nightDecrease")

                Rectangle {
                    id: rectangle5
                    color: "#000000"
                    anchors.fill: parent

                    Image {
                        id: image15
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
            signal buttonPressed(string action)
            id: buttonBack
            objectName: "buttonBack"
            x: 553
            y: 562
            width: 250
            height: 60
            text: qsTr("Button")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: buttonPressed("buttonBack")

            Rectangle {
                id: frame3
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
                    id: element6
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
            color: "#000000"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 220
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 182
            anchors.right: parent.right
            anchors.rightMargin: 17
            visible: true
            z: 5
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
                anchors.topMargin: 118
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
                text: "16"
                anchors.right: parent.right
                anchors.rightMargin: 180
                anchors.top: parent.top
                anchors.topMargin: 118
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
                    id: rectangle15
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
                    id: rectangle16
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
                anchors.verticalCenter: start_Time.verticalCenter
                anchors.left: start_temp.right
                anchors.leftMargin: -210
                Rectangle {
                    id: rectangle17
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
            }

            Button {
                id: startTime_Forward
                x: 368
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.verticalCenter: start_Time.verticalCenter
                anchors.right: start_temp.left
                anchors.rightMargin: -210
                Rectangle {
                    id: rectangle18
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
                color: "#f2e6e6"
                text: "07:30"
                anchors.top: start_temp.bottom
                anchors.topMargin: 250
                horizontalAlignment: Text.AlignHCenter
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
                anchors.top: start_Time.bottom
                anchors.topMargin: 9
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
                anchors.verticalCenter: stop_Time.verticalCenter
                anchors.left: start_temp1.right
                Rectangle {
                    id: rectangle19
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
                anchors.leftMargin: -210
            }

            Button {
                id: stopTime_Forward
                x: 375
                y: 7
                width: 110
                height: 50
                text: qsTr("Button")
                anchors.verticalCenter: stop_Time.verticalCenter
                anchors.right: start_temp1.left
                Rectangle {
                    id: rectangle20
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
                color: "#f2e6e6"
                text: "07:30"
                anchors.top: start_temp1.bottom
                anchors.topMargin: 250
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
                anchors.top: stop_Time.bottom
                anchors.topMargin: 9
                font.family: webFont.name
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: start_temp1.horizontalCenter
                font.pixelSize: 28
            }
        }

        Rectangle {
            id: rectangle8
            color: "#000000"
            anchors.left: rectangle6.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 17
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 99
            anchors.top: rectangle6.bottom
            anchors.topMargin: 20
            border.color: "#0c0cd9"
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
                width: 70
                height: 110
                text: qsTr("Button")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 150
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
                width: 70
                height: 110
                text: qsTr("Button")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 150
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
                rotation: -90
            }

            Text {
                id: element7
                x: 99
                y: 320
                color: "#f2e6e6"
                text: qsTr("Monday")
                z: 5
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.family: webFont.name
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                font.pixelSize: 45
            }
        }
    }
}

/*##^##
Designer {
    D{i:80;anchors_y:206}D{i:88;anchors_y:213}D{i:56;anchors_height:492;anchors_width:1001;anchors_x:182;anchors_y:20}
D{i:90;anchors_x:-8;anchors_y:2}
}
##^##*/
