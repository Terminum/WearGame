import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15


Item {
    property var pageStack: null
    width: parent.width
    height: parent.height
    anchors.fill: parent

    Rectangle {
        color: "black"
        width: parent.width
        height: parent.height
    }

    Rectangle {
        color: rectangle_color
        anchors.centerIn: parent
        anchors.fill: parent
//        width: 190
//        height: 190
        radius: 60
        anchors.margins: 25

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
                    font.pixelSize: 46
                    anchors {
                        top: parent.top
                        horizontalCenter: parent.horizontalCenter
                        topMargin: 15
                    }
                }

                Text {
                    text: qsTr("48")
                    font.bold: true
                    font.pixelSize: 46
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
                    font: control.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 80
                    implicitHeight: 20
                    opacity: enabled ? 1 : 0.3
                    color: "black"
                    border.color: "#313131"
                    border.width: 2
                    radius: 20
                }

                anchors {
                    bottom: parent.bottom
                    horizontalCenter: parent.horizontalCenter
                    bottomMargin: 15
                }

                onClicked: {
                    pageStack.push(Qt.resolvedUrl("qrc:/Game.qml"))
                }
            }
        }
    }
}
