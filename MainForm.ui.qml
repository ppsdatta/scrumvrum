import QtQuick 2.6

Rectangle {
    id: rectangle

    width: 360
    height: 360
    color: "#fa854a"
    property alias scrumArea: scrumArea
    property alias cardNumber: cardNumber

    MouseArea {
        id: scrumArea
        anchors.fill: parent

        Text {
            id: cardNumber
            x: 147
            y: 158
            color: "#fff6f6"
            text: "?"
            font.family: "Tahoma"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 112
        }
    }
}
