#include "Weather.h"

#include <QDebug>

weather::weather(QObject* rootObject)
{
    m_rootObject = rootObject;
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay);

    m_buttonPlusDay=m_rootObject->findChild<QQuickItem*>("increaseDay");
    m_buttonMinDay=m_rootObject->findChild<QQuickItem*>("decreaseDay");

    connect(m_buttonPlusDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_increaseDay(QString)));
    connect(m_buttonMinDay, SIGNAL(buttonPressed(QString)),this, SLOT(temperature_decreaseDay(QString)));

    qDebug() << "Weather.cpp active!";
}

void weather::temperature_increaseDay(QString action)
{
    QMap<QString, int> map;
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay + 1);

    m_newValueDay = m_newValueDay + 1;

    if (m_newValueDay > 30)
    {

        m_newValueDay = 30;
    }
     map.insert("1", m_newValueDay);
    qDebug("de plus knop werkt()");
}


void weather::temperature_decreaseDay(QString action)
{
    QMap<QString, int> map;
    m_temperatureDay=m_rootObject->findChild<QQuickItem*>("dayTemp");
    m_temperatureDay->setProperty("text", m_newValueDay - 1);

    m_newValueDay = m_newValueDay - 1;

    if (m_newValueDay > 30)
    {

        m_newValueDay = 30;
    }

     map.insert("1", m_newValueDay);
    qDebug("de min knop werkt()");
}

