//#include <QApplication>
#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
//#include <QtAndroid>
#include "engine.h"

int main(int argc, char *argv[])
{
//    QApplication app(argc, argv);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine appEngine;
    appEngine.load(QUrl(QLatin1String("qrc:/main.qml")));
//    QtAndroid::hideSplashScreen(500);

    return app.exec();
}
