import QtQuick 2.12

Item {
    id: root
    width: 100
    height: 100

    property color colorNormal: "red"
    property color colorPressed: "orange"
    property string title: "Click me"
    property color textColorNormal: "black"
    property color textColorPressed: "brown"

    Rectangle {
        id: myButton
        anchors.fill: parent
        color: root.colorNormal

        Text {
            id: txt
            text: root.title
            color: root.textColorNormal
            anchors.centerIn: parent
            font.pointSize: 10
        }

        MouseArea {
            anchors.fill: parent

            onPressed: {
                myButton.color = root.colorPressed
                txt.color = root.textColorPressed
            }

            onReleased: {
                myButton.color = root.colorNormal
                txt.color = root.textColorNormal
            }
        }
    }
}
