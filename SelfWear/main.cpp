//#include <QApplication>
#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "engine.h"

int main(int argc, char *argv[])
{
//    QApplication app(argc, argv);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine appEngine;
    appEngine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
