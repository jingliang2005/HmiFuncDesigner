#ifndef QRADIOBUTTONHOST_H
#define QRADIOBUTTONHOST_H

#include "qabstractbuttonhost.h"

class QRadioButtonHost: public QAbstractButtonHost
{
    Q_OBJECT
public:
    Q_INVOKABLE QRadioButtonHost(QAbstractHost *parent = 0);

    static QString getShowName();
    static QString getShowIcon();
    static QString getShowGroup();

protected:
    void initProperty() override;

protected:
    void createObject() override;

};
#endif // QRADIOBUTTONHOST_H
