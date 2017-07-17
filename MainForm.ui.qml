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
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.family: "Tahoma"
            font.pixelSize: 146
        }
    }
}
