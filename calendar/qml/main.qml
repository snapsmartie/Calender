/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.0

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Controls.Styles 1.1
import org.qtproject.examples.calendar 1.0
import QtGraphicalEffects 1.13



ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1200
    height: 800
    minimumWidth: 400
    minimumHeight: 300
    color: "#000000"

    //title: "Calendar Example"

    FontLoader { id: webFont; source: "file:///Qt/Fonts/DINPro-Light_13935.ttf" }

    SystemPalette {
        id: systemPalette
    }

    SqlEventModel {
        id: eventModel
    }

    Rectangle{
        id:digitalClockLine
        width: 500
        color: "blue"
        anchors.left: parent.left
        anchors.leftMargin: 700
        anchors.top: parent.top
        anchors.topMargin: 90
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

    Rectangle{
        x: 700
        width: 400
        height: 80
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 100
        color: "#00000000"
        Text {
            id: digitalClock
            font.pixelSize: 70
            font.family: webFont.name
            color: "white"
            text: ""
        }

        Timer{
            running: true
            interval: 500
            repeat: true
            onTriggered: {
                var date = new Date()
                digitalClock.text = date.toLocaleTimeString(Qt.locale("en"), "hh:mm:ss ap")
            }
        }
    }

    Calendar {
        id: calendar
        anchors.left: parent.left
        anchors.leftMargin: 600
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 200
        frameVisible: false
        weekNumbersVisible: true
        selectedDate: new Date(2014, 1, 1)
        focus: true

        Rectangle{
            id:leftLine
            color: "blue"
            height:parent.height
            width: 1
            anchors.left: parent.left
            layer.enabled: true
            layer.effect: Glow {
                samples: 25
                radius: 10
                spread: 0.5
                color: "blue"
                transparentBorder: true
            }
        }

        Rectangle{
            id:semiLeftLine
            color: "blue"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            width: 1
            anchors.left: parent.left
            anchors.leftMargin: 40
            anchors.top: parent.top
            anchors.topMargin: 59
            layer.enabled: true
            layer.effect: Glow {
                samples: 25
                radius: 10
                spread: 0.5
                color: "blue"
                transparentBorder: true
            }
        }

        Rectangle{
            id:topLine
            color: "blue"
            anchors.left: parent.left
            anchors.leftMargin: 1
            height:1
            width: parent.width
            anchors.top: parent.top
            layer.enabled: true
            layer.effect: Glow {
                samples: 25
                radius: 10
                spread: 0.7
                color: "blue"
                transparentBorder: true
            }
        }

        Rectangle{
            id:semiTopLine
            color: "blue"
            anchors.left: parent.left
            anchors.leftMargin: 1
            height:1
            width: parent.width
            anchors.top: parent.top
            anchors.topMargin: 58
            layer.enabled: true
            layer.effect: Glow {
                samples: 25
                radius: 10
                spread: 0.7
                color: "blue"
                transparentBorder: true
            }
        }

        style: CalendarStyle {
            gridColor: "black"

            navigationBar: Rectangle{
                color: "black"
                height: 50
                width: 50
                anchors.centerIn: parent

                ToolButton {
                    id: previousMonth
                    width: parent.height
                    height: width
                    anchors.leftMargin: 3
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 3
                    onClicked: control.showPreviousMonth()
                    Rectangle{
                        id: iconFrame
                        width: parent.width
                        height: parent.height
                        color: "#00000000"
                        Text {
                            id: leftArrow
                            anchors.top: parent.top
                            anchors.topMargin: -33
                            text: qsTr("<")
                            color: "white"
                            font.pixelSize: 80
                            font.family: webFont.name
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }

                ToolButton {
                    id: nextMonth
                    width: parent.height
                    height: width
                    anchors.rightMargin: 3
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 3
                    onClicked: control.showNextMonth()
                    Rectangle{
                        id: iconFrame2
                        width: parent.width
                        height: parent.height
                        color: "#00000000"
                        Text {
                            id: rightArrow
                            anchors.top: parent.top
                            anchors.topMargin: -33
                            text: qsTr(">")
                            color: "white"
                            font.pixelSize: 80
                            font.family: webFont.name
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }

                Label {
                    text: styleData.title
                    font.pixelSize: 30
                    font.family: webFont.name
                    anchors.centerIn: parent
                    color: "white"
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: "white"
                        transparentBorder: true
                    }
                }
            }

            background: Rectangle{
                color: "#00000000"
                height: parent.height
                width: parent.width
                Rectangle{
                    height: parent.height
                    width: 2
                    color: "#00000000"
                    anchors.left: parent.left
                }
            }

            weekNumberDelegate: Rectangle {
                implicitWidth: 40
                color: "black"
                Label {
                    text: styleData.weekNumber
                    font.pixelSize: 20
                    font.family: webFont.name
                    anchors.centerIn: parent
                    color: "white"
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: "white"
                        transparentBorder: true
                    }
                }
            }

            dayOfWeekDelegate: Rectangle{
                height: 50
                color: "black"
                Label {
                    text:Qt.locale().dayName(styleData.dayOfWeek, Locale.ShortFormat)
                    anchors.centerIn: parent
                    font.pixelSize: 30
                    font.family: webFont.name
                    color:styleData.dayOfWeek.selected ? "white" : "grey"
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: styleData.dayOfWeek.selected ? "white" : "grey"
                        transparentBorder: true
                    }
                }
                Rectangle{
                    id:botLine3
                    color: "#00000000"
                    height: 2
                    width: parent.width
                    anchors.bottom: parent.bottom
                }
            }

            dayDelegate: Item {
                readonly property color sameMonthDateTextColor: "white"
                //readonly property color selectedDateColor: Qt.platform.os === "osx" ? "#3778d0" : systemPalette.highlight
                readonly property color selectedDateTextColor: "white"
                readonly property color differentMonthDateTextColor: "grey"
                readonly property color invalidDatecolor: "#dddddd"

                Rectangle {
                    width: parent.width +1
                    height: parent.height +1
                    border.color: "#3D3D3D"
                    color: "black"
                    gradient: Gradient {
                        GradientStop {
                            position: 0.00
                            color: styleData.selected ? "darkblue" : (styleData.visibleMonth && styleData.valid ? "#black" : "black");
                        }
                        //                        GradientStop {
                        //                            position: 1.00
                        //                            color: styleData.selected ? "red" : (styleData.visibleMonth && styleData.valid ? "red" : "black");
                        //                        }
                        GradientStop {
                            position: 1.00
                            color: styleData.selected ? "blue" : (styleData.visibleMonth && styleData.valid ? "black" : "#565656");
                        }
                    }
                    anchors.margins: styleData.selected ? -1 : 0
                }

                Image {
                    visible: eventModel.eventsForDate(styleData.date).length > 0
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.margins: -1
                    width: 12
                    height: width
                    source: "qrc:/images/eventindicator.png"
                }

                Label {
                    id: dayDelegateText
                    text: styleData.date.getDate()
                    font.pixelSize: styleData.selected ? 50 : 30
                    font.family: webFont.name
                    anchors.centerIn: parent
                    antialiasing: true
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: {
                            var color = invalidDatecolor;
                            if (styleData.valid) {
                                // Date is within the valid range.
                                color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
                                if (styleData.selected) {
                                    color = selectedDateTextColor;
                                }
                            }
                            color;
                        }
                        transparentBorder: true
                    }
                    color: {
                        var color = invalidDatecolor;
                        if (styleData.valid) {
                            // Date is within the valid range.
                            color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
                            if (styleData.selected) {
                                color = selectedDateTextColor;
                            }
                        }
                        color;
                    }
                }
            }
        }
    }

    Component {
        id: eventListHeader

        Row {
            id: eventDateRow
            width: parent.width
            height: eventDayLabel.height
            spacing: 10

            Label {
                id: eventDayLabel
                text: calendar.selectedDate.getDate()
                font.pointSize: 45
                font.family: webFont.name
                antialiasing: true
                color: "white"
                layer.enabled: true
                layer.effect: Glow {
                    samples: 15
                    radius: 1
                    spread: 0.1
                    color: "white"
                    transparentBorder: true
                }
            }

            Column {
                height: eventDayLabel.height

                Label {
                    readonly property var options: { weekday: "long" }
                    id: weekDayLenght
                    text: Qt.locale().standaloneDayName(calendar.selectedDate.getDay(), Locale.LongFormat)
                    font.pointSize: 20
                    font.family: webFont.name
                    antialiasing: true
                    color: "white"
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: "white"
                        transparentBorder: true
                    }
                }
                Label {
                    text: Qt.locale().standaloneMonthName(calendar.selectedDate.getMonth())
                          + calendar.selectedDate.toLocaleDateString(Qt.locale(), " yyyy")
                    font.pointSize: 16
                    font.family: webFont.name
                    antialiasing: true
                    color: "white"
                    layer.enabled: true
                    layer.effect: Glow {
                        samples: 15
                        radius: 1
                        spread: 0.1
                        color: "white"
                        transparentBorder: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: listViewFrame
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: calendar.left
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: Qt.darker(color, 1.2)

        ListView {
            id: eventsListView
            anchors.topMargin: 10
            spacing: 4
            clip: true
            header: eventListHeader
            anchors.fill: parent
            anchors.margins: 10
            model: eventModel.eventsForDate(calendar.selectedDate)

            delegate: Rectangle {
                width: eventsListView.width
                height: eventItemColumn.height
                anchors.horizontalCenter: parent.horizontalCenter
                color: "black"
                Rectangle{
                    id: bottomline
                    anchors.bottom: parent.bottom
                    height: 1
                    width: parent.width
                    color: "grey"
                }

                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 4
                    width: 12
                    height: width
                    source: "qrc:/images/eventindicator.png"
                }

                Column {
                    id: eventItemColumn
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.right: parent.right
                    height: timeLabel.height + nameLabel.height + 8

                    Label {
                        id: nameLabel
                        width: parent.width
                        wrapMode: Text.Wrap
                        text: modelData.name
                        font.pixelSize: 30
                        font.family: webFont.name
                        antialiasing: true
                        color: "white"
                        layer.enabled: true
                        layer.effect: Glow {
                            samples: 15
                            radius: 1
                            spread: 0.1
                            color: "white"
                            transparentBorder: true
                        }
                    }
                    Label {
                        id: timeLabel
                        width: parent.width
                        wrapMode: Text.Wrap
                        text: modelData.startDate.toLocaleTimeString(calendar.locale, Locale.ShortFormat)
                        font.pixelSize: 30
                        font.family: webFont.name
                        antialiasing: true
                        color: "white"
                        layer.enabled: true
                        layer.effect: Glow {
                            samples: 15
                            radius: 1
                            spread: 0.1
                            color: "white"
                            transparentBorder: true
                        }
                    }
                }
            }

            Rectangle {
                id: rectangle
                width: 180
                height: 1
                color: "blue"
                anchors.top: parent.top
                anchors.topMargin: 70
                anchors.left: parent.left
                anchors.leftMargin: 0
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
    }
}

