QT += qml quick sql
TARGET = calendar

include(src/src.pri)
include(../shared/shared.pri)

OTHER_FILES += qml/main.qml

RESOURCES += \
    resources.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/quickcontrols/controls/calendar
INSTALLS += target

DISTFILES += \
    qml/calender.qml \
    qml/clock.qml \
    qml/scedule_Settings.qml \
    qml/themes.qml \
    qml/thermostate.qml \
    qml/weather.qml

SOURCES +=

HEADERS +=
