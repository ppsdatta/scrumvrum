#include "cardnumbers.h"

CardNumbers::CardNumbers(QObject *parent) : QObject(parent), curIndex(0)
{
    cardValues.push_back(QString("0"));
    cardValues.push_back(QString("1/2"));
    cardValues.push_back(QString("1"));
    cardValues.push_back(QString("2"));
    cardValues.push_back(QString("3"));
    cardValues.push_back(QString("5"));
    cardValues.push_back(QString("8"));
    cardValues.push_back(QString("13"));
    cardValues.push_back(QString("20"));
    cardValues.push_back(QString(":-X"));
}

QString CardNumbers::cardValue()
{
    if (curIndex == cardValues.size()) {
        curIndex = 0;
    }

    return cardValues[curIndex++];
}

void CardNumbers::setCardValue(QString)
{
    // Nothing here
}
