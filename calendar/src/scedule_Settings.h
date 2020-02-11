#ifndef SCEDULE_SETTINGS_H
#define SCEDULE_SETTINGS_H

#include <QObject>
#include <QQuickItem>

class scedule_Settings : public QObject
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

    double m_newValueDay= 20;
    double m_newValueNight= 20;

public:
    scedule_Settings(QObject* rootObject);

public slots:
    void temperature_increaseDay(QString);
    void temperature_decreaseDay(QString);
   // void temperature_increaseNight(QString);
   // void temperature_decreaseNight(QString);

signals:

};

#endif // SCEDULE_SETTINGS_H
