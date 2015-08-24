import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    // implement a stack view for navigation through the views
    StackView {
            id: stackView
            anchors.fill: parent
            // Implements back key navigation
            focus: true
            Keys.onReleased: if (event.key === Qt.Key_Back && stackView.depth > 1) {
                                 stackView.pop();
                                 event.accepted = true;
                             }
            initialItem: MainForm {
                anchors.fill: parent
                button1.onClicked: {
                    var cmp = Qt.createComponent("Scan.qml")
                    var win = cmp.createObject(stackView)
                    stackView.push(win)
                }

            }

    }

}

