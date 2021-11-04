import QtQuick 2.3
import QtQuick.Window 2.3
import QtQuick.Controls 2.3


Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Task")
    TaskButton {
        x: 32
        y: 261
        buttonText: "Play"
    }

    TaskButton {
        id: taskButton
        x: 32
        y: 301
        buttonText: "Settings"
    }

    TaskButton {
        id: taskButton1
        x: 32
        y: 341
        buttonText: "Quit"
    }
}


