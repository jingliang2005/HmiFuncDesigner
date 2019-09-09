#ifndef ModbusASCII_H
#define ModbusASCII_H

#include <QObject>
#include "../IDevicePlugin/IDevicePlugin.h"


class ModbusASCII : public QObject, IDevicePlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID DevicePluginInterface_iid FILE "ModbusASCII.json")
    Q_INTERFACES(IDevicePlugin)

public:
    ModbusASCII();

    // 获取设备类型名称
    QString GetDeviceTypeName();
    // 获取设备支持的所有协议
    QStringList GetDeviceSupportProtocol() Q_DECL_OVERRIDE;
    // 获取设备支持的所有寄存器区
    QStringList GetDeviceSupportRegisterArea() Q_DECL_OVERRIDE;
    // 获取设备支持的所有数据类型
    QStringList GetDeviceSupportDataType() Q_DECL_OVERRIDE;
    // 获取寄存器区地址的下限和上限
    void GetRegisterAreaLimit(const QString &areaName,
                              quint32 &lowerLimit,
                              quint32 &upperLimit) Q_DECL_OVERRIDE;

};

#endif // ModbusASCII_H
