import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: 300
    height: 340
    visible: true
    title: qsTr("VanCozumUpdater")
    Component.onCompleted: {

    }

    Rectangle {
        id: rectangle
        color: "#003e44"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            color: "#003136"
            anchors.fill: parent
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 20

            Button {
                id: button
                y: 241
                text: qsTr("Güncelle")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 80
                anchors.leftMargin: 80
                anchors.bottomMargin: 20
                onClicked: {
                    backend.guncelP(text)
                }
            }

            ProgressBar {
                id: progressBar
                y: 210
                height: 24
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.leftMargin: 30
                anchors.rightMargin: 30
                anchors.bottomMargin: 60
                value: 0
            }

            ScrollView {
                id: scrollView
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: progressBar.top
                clip: true
                anchors.bottomMargin: 20
                anchors.topMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 10

                Label {
                    id: label
                    x: 0
                    y: 0
                    width: 240
                    height: 186
                    color: "#ffffff"
                    text: "Dosyalar FTP Sunucu üzerinden kontrol ediliyor..."
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Label {
                id: labelDurum
                x: 30
                y: 208
                width: 200
                height: 13
                color: "#ff0000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    Connections {
        target: backend
        function onGoBack(bck){
            label.text = bck
        }
        function onGetDurum(ht){
            labelDurum.text = ht
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:6}
}
##^##*/
