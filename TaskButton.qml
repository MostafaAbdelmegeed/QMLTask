import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3
import QtGraphicalEffects 1.12

Button {
    id: btn
    width: 100
    height: 40
    visible: true
    palette {
        button: "transparent"
    }

    property alias buttonText : btnText.text

    states: [
            State {
                name: "Normal"
                PropertyChanges { target: btnRect; color: "red"; width: 10}
            },
            State {
                name: "Hovered"
                extend: "Normal"
                PropertyChanges { target: btnRect; color: "red"; width: 25 }
            },
            State {
                name: "Clicked"
                extend: "Normal"
                PropertyChanges { target: btnRect; color: "green"; width: 30 }
            }
        ]

    transitions: Transition {
            NumberAnimation { target: btnRect; properties: "width, color"; easing.type: Easing.InOutQuad; duration: 150 }
        }



    Text {
        id: btnText
        anchors.verticalCenter: parent.verticalCenter
        x: btnRect.x + btnRect.width + 5
        text: front.text
        font.pixelSize: 16
    }

    Rectangle {
        id: btnRect
        width: 10
        height: parent.height
        visible: true
        color: "red"
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onHoveredChanged: {
            containsMouse ? btn.state = 'Hovered' : btn.state = 'Normal'
        }
        onPressedChanged: {
            pressed ? btn.state = 'Clicked' : btn.state = 'Hovered'
        }
    }
}

