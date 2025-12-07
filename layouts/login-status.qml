import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.12

Rectangle {
    id: statusBackground
    // color: "#aa000000"
    color: "#00ffffff"

    GaussianBlur {
        anchors.fill: parent
        source: bgSrc
        samples: 128
        radius: 60
        transparentBorder: false
        cached: true
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#aa000000"
    }
    Column {
        anchors.centerIn: parent
        spacing: 12
        Image {
            id: loginstatusicon
            source: "../assets/icons/wave.svg"
            width: 45
            height: 45
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: loginstatus
            text: "status"
            color: "#ffffff"
            font.pixelSize: 16
        }
    }
}

// FastBlur {
//     anchors.fill: statusBackground
//     source: statusBackground
//     radius: 60
//     transparentBorder: false
//     z: -5
// }