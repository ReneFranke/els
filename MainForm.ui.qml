import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: itemMain
    width: 480
    height: 800

    property alias button1: buttonScan
    property alias button2: buttonOCR
    property alias button3: buttonLists

    ColumnLayout {
        id: columnLayout1Main
        x: 320
        y: 240
        width: 0
        height: 0
        antialiasing: true
        scale: 1.2
        transformOrigin: Item.Center
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top

        Button {
            id: buttonLists
            width: 100
            text: qsTr("letzte Listen")
            anchors.top: buttonOCR.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: buttonOCR
            width: 100
            text: qsTr("Worterkennung")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Button {
            id: buttonScan
            width: 100
            text: qsTr("Scan [  ]")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: buttonOCR.top
            anchors.bottomMargin: 20
            transformOrigin: Item.Center
        }


    }
}

