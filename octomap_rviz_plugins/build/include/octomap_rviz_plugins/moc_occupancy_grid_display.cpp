/****************************************************************************
** Meta object code from reading C++ file 'occupancy_grid_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../include/octomap_rviz_plugins/occupancy_grid_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'occupancy_grid_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay_t {
    QByteArrayData data[10];
    char stringdata0[176];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay_t qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay = {
    {
QT_MOC_LITERAL(0, 0, 41), // "octomap_rviz_plugin::Occupanc..."
QT_MOC_LITERAL(1, 42, 15), // "updateQueueSize"
QT_MOC_LITERAL(2, 58, 0), // ""
QT_MOC_LITERAL(3, 59, 11), // "updateTopic"
QT_MOC_LITERAL(4, 71, 15), // "updateTreeDepth"
QT_MOC_LITERAL(5, 87, 22), // "updateOctreeRenderMode"
QT_MOC_LITERAL(6, 110, 21), // "updateOctreeColorMode"
QT_MOC_LITERAL(7, 132, 11), // "updateAlpha"
QT_MOC_LITERAL(8, 144, 15), // "updateMaxHeight"
QT_MOC_LITERAL(9, 160, 15) // "updateMinHeight"

    },
    "octomap_rviz_plugin::OccupancyGridDisplay\0"
    "updateQueueSize\0\0updateTopic\0"
    "updateTreeDepth\0updateOctreeRenderMode\0"
    "updateOctreeColorMode\0updateAlpha\0"
    "updateMaxHeight\0updateMinHeight"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_octomap_rviz_plugin__OccupancyGridDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x08 /* Private */,
       3,    0,   55,    2, 0x08 /* Private */,
       4,    0,   56,    2, 0x08 /* Private */,
       5,    0,   57,    2, 0x08 /* Private */,
       6,    0,   58,    2, 0x08 /* Private */,
       7,    0,   59,    2, 0x08 /* Private */,
       8,    0,   60,    2, 0x08 /* Private */,
       9,    0,   61,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void octomap_rviz_plugin::OccupancyGridDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OccupancyGridDisplay *_t = static_cast<OccupancyGridDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateQueueSize(); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->updateTreeDepth(); break;
        case 3: _t->updateOctreeRenderMode(); break;
        case 4: _t->updateOctreeColorMode(); break;
        case 5: _t->updateAlpha(); break;
        case 6: _t->updateMaxHeight(); break;
        case 7: _t->updateMinHeight(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject octomap_rviz_plugin::OccupancyGridDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay.data,
      qt_meta_data_octomap_rviz_plugin__OccupancyGridDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *octomap_rviz_plugin::OccupancyGridDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *octomap_rviz_plugin::OccupancyGridDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_octomap_rviz_plugin__OccupancyGridDisplay.stringdata0))
        return static_cast<void*>(const_cast< OccupancyGridDisplay*>(this));
    return rviz::Display::qt_metacast(_clname);
}

int octomap_rviz_plugin::OccupancyGridDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
