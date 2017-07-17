import QtQuick 2.6
import QtQuick.Window 2.2

import cardnumbers 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    CardNumbers {
        id: cards
    }

    MainForm {
        anchors.fill: parent
        scrumArea.onClicked: {
            cardNumber.text = cards.cardValue
        }
        resetArea.onClicked: {
            cards.cardValue = "reset"
            cardNumber.text = cards.cardValue
        }
    }
}
