import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
    width: 395
    height: 395
    visible: true
    flags: Qt.NoGesture

    Rectangle
    {
        anchors.fill: parent
        color: "black"
        radius: height / 2
        id: oval
        Game {
            width: parent.width - (parent.width / 6)
            height: parent.height - (parent.height / 6)
//            anchors.centerIn: oval
            anchors.horizontalCenter: oval.horizontalCenter
            anchors.top: oval.top
            anchors.topMargin: oval.height / 30
        }

    }
}
