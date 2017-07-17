import QtQuick 2.6

Rectangle {
    id: rectangle

    width: 360
    height: 360
    color: "#fa854a"
    property alias resetArea: resetArea
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

        MouseArea {
            id: resetArea
            x: 264
            y: 275
            width: 96
            height: 85
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Rectangle {
                id: rectangle1
                color: "#f20404"
                radius: 43
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                Text {
                    id: text1
                    x: 29
                    y: 40
                    color: "#fff2f2"
                    text: qsTr("Reset")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.family: "Courier"
                    font.pixelSize: 20
                }
            }
        }
    }
}
