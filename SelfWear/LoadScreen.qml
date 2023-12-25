import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Item {
    property var pageStack: null
    property color rectangle_color: "#D2E02E"
    width: parent.width
    height: parent.height
    anchors.fill: parent

    Rectangle {
        color: "black"
        width: parent.width
        height: parent.height
    }

    Rectangle {
        id: _mainRect
        color: rectangle_color
        anchors.centerIn: parent
        anchors.fill: parent
        radius: parent.width * 0.9
        anchors.margins: parent.height * 0.05

        ColumnLayout {
            anchors.centerIn: parent

            ColumnLayout {
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 2

                Text {
                    text: qsTr("20")
                    font.bold: true
                    font.pixelSize: _mainRect.width * 0.25
                    anchors {
                        top: parent.top
                        horizontalCenter: parent.horizontalCenter
                        topMargin: 15
                    }
                }

                Text {
                    text: qsTr("48")
                    font.bold: true
                    font.pixelSize: _mainRect.width * 0.25
                    anchors {
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        bottomMargin: 5
                    }
                }
            }
            Button {
                id: control
                text: qsTr("Играть")
                contentItem: Text {
                    text: control.text
                    font.pixelSize: _mainRect.height * 0.06
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    elide: Text.ElideRight
                }

                background: Rectangle {
                    opacity: enabled ? 1 : 0.3
                    color: "black"
                    border.color: "#313131"
                    border.width: 2
                    radius: 20
                }

                anchors {
                    bottom: parent.bottom
                    horizontalCenter: parent.horizontalCenter
                    bottomMargin: _mainRect.width * 0.1
                }

                onClicked: {
                    pageStack.push(Qt.resolvedUrl("qrc:/Game.qml"))
                }
            }
        }
    }
}
