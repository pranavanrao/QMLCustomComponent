import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int middle: (height / 2) - 100

    MyButton{
        id: btn1
        x: 100
        y: middle
        title: "Button 1"
        colorNormal: "red"
        colorPressed: "pink"
    }

    MyButton{
        id: btn2
        x: (parent.width / 2) - (width / 2)
        y: middle
        title: "Button 2"
        colorNormal: "green"
        colorPressed: "pink"
    }

    MyButton{
        id: btn3
        x: parent.width - 200
        y: middle
        title: "Button 3"
        colorNormal: "blue"
        colorPressed: "pink"
    }

    MyButton{
        id: btn4
        x: (parent.width / 2) - (width / 2)
        y: middle + 120
        width: 500
        height: 40
        title: "<html><b>Super</b> <i>long</i>  <u>Button</u></html>"
        colorNormal: "yellow"
        colorPressed: "pink"
    }
}
