#ifndef CARDNUMBERS_H
#define CARDNUMBERS_H

#include <QObject>

#include <vector>

class CardNumbers : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString cardValue READ cardValue WRITE setCardValue NOTIFY cardValueChanged)
public:
    explicit CardNumbers(QObject *parent = nullptr);
    QString cardValue();
    void setCardValue(QString);
signals:
    void cardValueChanged();
public slots:
private:
    std::vector<QString> cardValues;
    size_t curIndex;
};

#endif // CARDNUMBERS_H
