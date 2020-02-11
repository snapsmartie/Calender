#include "thermostate.h"
#include"scedule_Settings.h"

#include <QDebug>

Thermostate::Thermostate(QObject* rootObject)
{
 //Thermo menu
    m_rootObject = rootObject;
    m_temperature=m_rootObject->findChild<QQuickItem*>("thermostate_value");
    m_temperature->setProperty("text", m_newValue);
    m_temperatureNight=m_rootObject->findChild<QQuickItem*>("tempNight");
    m_temperatureNight->setProperty("text", m_ValueNight);
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("tempDay");
    m_temperatureDay->setProperty("text", m_ValueDay);
    m_Botmarge=m_rootObject->findChild<QQuickItem*>("thermoSettingsFrame");

    m_buttonPlus=m_rootObject->findChild<QQuickItem*>("increase");
    m_buttonMin=m_rootObject->findChild<QQuickItem*>("decrease");
    m_buttonDay=m_rootObject->findChild<QQuickItem*>("buttonDay");
    m_buttonNight=m_rootObject->findChild<QQuickItem*>("buttonNight");
    m_buttonSettings=m_rootObject->findChild<QQuickItem*>("buttonScedule");

 // settings menu
    m_buttonIncreaseDay=m_rootObject->findChild<QQuickItem*>("dayIncrease");
    m_buttonDecreaseDay=m_rootObject->findChild<QQuickItem*>("dayDecrease");
    m_buttonIncreaseNight=m_rootObject->findChild<QQuickItem*>("nightIncrease");
    m_buttonDecreaseNight=m_rootObject->findChild<QQuickItem*>("nightDecrease");
    m_buttonThermo=m_rootObject->findChild<QQuickItem*>("buttonBack");



 //Thermo menu
    connect(m_buttonPlus, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_increase(QString)));
    connect(m_buttonMin, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_decrease(QString)));
    connect(m_buttonDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_day(QString)));
    connect(m_buttonNight, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_night(QString)));
    connect(m_buttonSettings, SIGNAL(buttonPressed(QString)),this, SLOT(settingsAct(QString)));

// settings menu
    connect(m_buttonIncreaseDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_increaseDay(QString)));
    connect(m_buttonDecreaseDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_decreaseDay(QString)));
    connect(m_buttonIncreaseNight, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_increaseNight(QString)));
    connect(m_buttonDecreaseNight, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_decreaseNight(QString)));
    connect(m_buttonThermo, SIGNAL(buttonPressed(QString)),this, SLOT(settingsInact(QString)));

    scedule_Settings dt(rootObject);
    qDebug() << "thermostate.cpp active!";
}


void Thermostate::temperature_increase(QString action)
{

    m_temperature=m_rootObject->findChild<QQuickItem*>("thermostate_value");
    m_temperature->setProperty("text", m_newValue + 0.5);

    m_newValue = m_newValue + 0.5;

    if (m_newValue > 30)
    {

        m_newValue = 30;
    }


    qDebug("de plus knop werkt()");
}


void Thermostate::temperature_decrease(QString action)
{
    m_temperature=m_rootObject->findChild<QQuickItem*>("thermostate_value");
    m_temperature->setProperty("text", m_newValue - 0.5);

    m_newValue = m_newValue - 0.5;

    if (m_newValue < 10)
    {

        m_newValue = 10;
    }
    qDebug("de min knop werkt()");
}

void Thermostate::temperature_day(QString action)
{
    m_temperature=m_rootObject->findChild<QQuickItem*>("thermostate_value");
    m_temperature->setProperty("text", m_ValueDay);
    m_newValue = m_ValueDay;

    qDebug("de dag knop werkt()");
}

void Thermostate::temperature_night(QString action)
{
    m_temperature=m_rootObject->findChild<QQuickItem*>("thermostate_value");
    m_temperature->setProperty("text", m_ValueNight);
    m_newValue = m_ValueNight;

    qDebug("de nacht knop werkt()");
}

void Thermostate::settingsAct(QString action)
{
    m_Botmarge=m_rootObject->findChild<QQuickItem*>("thermoSettingsFrame");
    m_Botmarge->setProperty("settingsHeight", "0");

       qDebug("de settings knop werkt()");
}

void Thermostate::settingsInact(QString action)
{
    m_Botmarge=m_rootObject->findChild<QQuickItem*>("thermoSettingsFrame");
    m_Botmarge->setProperty("settingsHeight", "900");

       qDebug("de back knop werkt()");
}

void Thermostate::temperature_increaseDay(QString action)
{

    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("tempDay");
    m_temperatureDay->setProperty("text", m_ValueDay + 0.5);

    m_ValueDay = m_ValueDay + 0.5;

    if (m_ValueDay > 30)
    {

        m_ValueDay = 30;
    }


    qDebug("de dag plus knop werkt()");
}


void Thermostate::temperature_decreaseDay(QString action)
{
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("tempDay");
    m_temperatureDay->setProperty("text", m_ValueDay - 0.5);

    m_ValueDay = m_ValueDay - 0.5;

    if (m_ValueDay < 10)
    {

        m_ValueDay = 10;
    }
    qDebug("de dag min knop werkt()");
}

void Thermostate::temperature_increaseNight(QString action)
{

    m_temperatureNight=m_rootObject->findChild<QQuickItem*>("tempNight");
    m_temperatureNight->setProperty("text", m_ValueNight + 0.5);

    m_ValueNight = m_ValueNight + 0.5;

    if (m_ValueNight > 30)
    {

        m_ValueNight = 30;
    }


    qDebug("de nacht plus knop werkt()");
}


void Thermostate::temperature_decreaseNight(QString action)
{
    m_temperatureNight=m_rootObject->findChild<QQuickItem*>("tempNight");
    m_temperatureNight->setProperty("text", m_ValueNight - 0.5);

    m_ValueNight = m_ValueNight - 0.5;

    if (m_ValueNight < 10)
    {

        m_ValueNight = 10;
    }
    qDebug("de nacht min knop werkt()");
}

