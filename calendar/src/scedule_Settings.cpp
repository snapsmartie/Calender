#include "scedule_Settings.h"
#include "thermostate.h"
#include <QDebug>

scedule_Settings::scedule_Settings(QObject* rootObject)
{
    m_rootObject = rootObject;
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay);

    m_buttonPlusDay=m_rootObject->findChild<QQuickItem*>("increaseDay");
    m_buttonMinDay=m_rootObject->findChild<QQuickItem*>("decreaseDay");

    connect(m_buttonPlusDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_increaseDay(QString)));
    connect(m_buttonMinDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_decreaseDay(QString)));

    qDebug() << "scedule.Settings.cpp active!";
}

void scedule_Settings::temperature_increaseDay(QString action)
{
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay + 0.5);

    m_newValueDay = m_newValueDay + 0.5;

    if (m_newValueDay > 30)
    {

        m_newValueDay = 30;
    }
    qDebug("de plus knop werkt()");
}


void scedule_Settings::temperature_decreaseDay(QString action)
{
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay - 0.5);

    m_newValueDay = m_newValueDay - 0.5;

    if (m_newValueDay > 30)
    {

        m_newValueDay = 30;
    }
    qDebug("de min knop werkt()");
}
