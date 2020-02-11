#ifndef WEATHER_H
#define WEATHER_H

#include <QObject>
#include <QQuickItem>

class weather : public QObject
  {
    Q_OBJECT
private:
    QObject* m_rootObject;

    QQuickItem* m_buttonPlusDay;
    QQuickItem* m_buttonMinDay;
    QQuickItem* m_temperatureDay;

   // QQuickItem* m_buttonPlusNight;
   // QQuickItem* m_buttonMinNight;
  //  QQuickItem* m_temperatureNight;

    int m_newValueDay;
    int m_newValueNight= 20;

public:
    weather(QObject* rootObject);

public slots:
    void temperature_increaseDay(QString);
    void temperature_decreaseDay(QString);
   // void temperature_increaseNight(QString);
   // void temperature_decreaseNight(QString);

signals:

};

#endif // WEATHER_H
