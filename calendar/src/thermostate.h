#ifndef THERMOSTATE_H
#define THERMOSTATE_H

#include <QObject>
#include <QQuickItem>

class Thermostate : public QObject
  {
    Q_OBJECT
private:
    QObject* m_rootObject;
    
    QQuickItem* m_buttonPlus;
    QQuickItem* m_buttonMin;
    QQuickItem* m_buttonDay;
    QQuickItem* m_buttonNight;
    QQuickItem* m_buttonSettings;
    QQuickItem* m_buttonThermo;
    QQuickItem* m_temperature;
    QQuickItem* m_temperatureDay;
    QQuickItem*m_temperatureNight;
    QQuickItem* m_Botmarge;

    QQuickItem* m_buttonIncreaseDay;
    QQuickItem* m_buttonDecreaseDay;
    QQuickItem* m_buttonIncreaseNight;
    QQuickItem* m_buttonDecreaseNight;

    double m_newValue   = 19;
    double m_ValueDay   = 20;
    double m_ValueNight = 16;

public:
    Thermostate(QObject* rootObject);

public slots:
    void temperature_increase   (QString);
    void temperature_decrease   (QString);
    void temperature_day        (QString);
    void temperature_night      (QString);
    void settingsAct            (QString);
    void settingsInact          (QString);

    void temperature_increaseDay   (QString);
    void temperature_decreaseDay   (QString);
    void temperature_increaseNight (QString);
    void temperature_decreaseNight (QString);

signals:

};

#endif // THERMOSTATE_H

