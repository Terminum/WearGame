import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
    width: 395
    height: 395
    visible: true
    color: "#000000"

    StackView {
            id: pageStack
            initialItem: loader
            anchors.fill: parent

            Loader {
                id: loader
                source: "qrc:/LoadScreen.qml"
                onLoaded: {
                    item.pageStack = pageStack
                }
            }
        }
}
