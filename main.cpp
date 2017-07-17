#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "cardnumbers.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<CardNumbers>("cardnumbers", 1, 0, "CardNumbers");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
