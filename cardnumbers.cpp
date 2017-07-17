#include "cardnumbers.h"
#include <iostream>

CardNumbers::CardNumbers(QObject *parent) : QObject(parent), curIndex(0)
{
    this->cardValues.push_back(QString("0"));
    this->cardValues.push_back(QString("1/2"));
    this->cardValues.push_back(QString("1"));
    this->cardValues.push_back(QString("2"));
    this->cardValues.push_back(QString("3"));
    this->cardValues.push_back(QString("5"));
    this->cardValues.push_back(QString("8"));
    this->cardValues.push_back(QString("13"));
    this->cardValues.push_back(QString("20"));
    this->cardValues.push_back(QString(":-X"));
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
