#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>

static const unsigned char qt_resource_tree[] = {
0,
0,0,0,0,2,0,0,0,1,0,0,0,1,0,0,0,
8,0,2,0,0,0,6,0,0,0,2,0,0,0,170,0,
0,0,0,0,1,0,0,0,0,0,0,0,78,0,0,0,
0,0,1,0,0,0,0,0,0,0,48,0,0,0,0,0,
1,0,0,0,0,0,0,0,102,0,0,0,0,0,1,0,
0,0,0,0,0,0,124,0,0,0,0,0,1,0,0,0,
0,0,0,0,20,0,0,0,0,0,1,0,0,0,0};
static const unsigned char qt_resource_names[] = {
0,
1,0,0,0,47,0,47,0,3,0,0,120,60,0,113,0,
109,0,108,0,11,14,62,41,124,0,119,0,101,0,97,0,
116,0,104,0,101,0,114,0,46,0,113,0,109,0,108,0,
12,7,245,16,188,0,99,0,97,0,108,0,101,0,110,0,
100,0,101,0,114,0,46,0,113,0,109,0,108,0,9,5,
158,132,92,0,99,0,108,0,111,0,99,0,107,0,46,0,
113,0,109,0,108,0,8,8,1,90,92,0,109,0,97,0,
105,0,110,0,46,0,113,0,109,0,108,0,20,11,52,4,
60,0,83,0,99,0,101,0,100,0,117,0,108,0,101,0,
95,0,83,0,101,0,116,0,116,0,105,0,110,0,103,0,
115,0,46,0,113,0,109,0,108,0,15,1,145,106,220,0,
116,0,104,0,101,0,114,0,109,0,111,0,115,0,116,0,
97,0,116,0,101,0,46,0,113,0,109,0,108};
static const unsigned char qt_resource_empty_payout[] = { 0, 0, 0, 0, 0 };
QT_BEGIN_NAMESPACE
extern Q_CORE_EXPORT bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
QT_END_NAMESPACE
namespace QmlCacheGeneratedCode {
namespace _qml_thermostate_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _qml_Scedule_Settings_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _qml_main_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _qml_clock_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _qml_calender_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _qml_weather_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/thermostate.qml"), &QmlCacheGeneratedCode::_qml_thermostate_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/Scedule_Settings.qml"), &QmlCacheGeneratedCode::_qml_Scedule_Settings_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/main.qml"), &QmlCacheGeneratedCode::_qml_main_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/clock.qml"), &QmlCacheGeneratedCode::_qml_clock_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/calender.qml"), &QmlCacheGeneratedCode::_qml_calender_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/qml/weather.qml"), &QmlCacheGeneratedCode::_qml_weather_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.version = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
QT_PREPEND_NAMESPACE(qRegisterResourceData)(/*version*/0x01, qt_resource_tree, qt_resource_names, qt_resource_empty_payout);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_resources)() {
    ::unitRegistry();
    Q_INIT_RESOURCE(resources_qmlcache);
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_resources))
int QT_MANGLE_NAMESPACE(qCleanupResources_resources)() {
    Q_CLEANUP_RESOURCE(resources_qmlcache);
    return 1;
}
