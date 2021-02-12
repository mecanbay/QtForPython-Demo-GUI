import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls/"
Item {

    id: item1



    Rectangle {
        id: rectangle
        color: "#1e3535"
        anchors.fill: parent



        ScrollView {
            id: scrollView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            clip: true
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10

            Rectangle {
                id: rectangle1
                width: 273
                height: 251
                color: "#121f1f"
                radius: 15
                border.width: 0
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 5
                anchors.topMargin: 5

                Label {
                    id: label
                    color: "#ffffff"
                    text: qsTr("Güncelleme Yöneticisi")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    font.bold: true
                    anchors.rightMargin: 64
                    anchors.leftMargin: 64
                    anchors.topMargin: 8
                    font.pointSize: 10
                }

                Rectangle {
                    id: rectangle2
                    height: 2
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.leftMargin: 25
                    anchors.rightMargin: 25
                    anchors.topMargin: 25
                }

                Label {
                    id: label1
                    x: 8
                    y: 38
                    color: "#ffffff"
                    text: qsTr("Sürüm :")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

                Label {
                    id: label3
                    x: 8
                    y: 60
                    color: "#ffffff"
                    text: qsTr("FTP Bağlantısı :")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

                Label {
                    id: labelSurum
                    x: 60
                    y: 38
                    color: "#ffffff"
                    text: qsTr("NULL")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

                Label {
                    id: labelFtp
                    x: 104
                    y: 60
                    color: "#00ff00"
                    text: qsTr("NULL")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

                CustomBtn {
                    id: btnGuncel
                    y: 209
                    height: 32
                    visible: false
                    text: "Güncelle"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    colorDefault: "#009600"
                    anchors.rightMargin: 50
                    anchors.leftMargin: 50
                    anchors.bottomMargin: 10
                    onClicked: {
                        backend.updateProgram(text)
                    }
                }

                Label {
                    id: labelRtn
                    x: 117
                    y: 82
                    width: 131
                    height: 16
                    color: "#ffffff"
                    text: qsTr("NULL")
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

                Label {
                    id: label5
                    x: 8
                    y: 82
                    color: "#ffffff"
                    text: qsTr("Yazılım Durumu :")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                }

            }

            Rectangle {
                id: rectangle3
                height: 251
                color: "#121f1f"
                radius: 15
                border.width: 0
                anchors.left: rectangle1.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 10
                anchors.topMargin: 5
                anchors.rightMargin: 5

                Label {
                    id: label6
                    color: "#ffffff"
                    text: qsTr("Sürüm Notları :")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    font.bold: true
                    leftPadding: 10
                    anchors.leftMargin: 10
                    anchors.topMargin: 8
                    font.pointSize: 10
                }

                Rectangle {
                    id: rectangle4
                    height: 2
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 301
                    anchors.leftMargin: 10
                    anchors.topMargin: 25
                }

                ScrollView {
                    id: scrollView1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle4.bottom
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.topMargin: 5
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.bottomMargin: 10

                    Label {
                        id: labelRls
                        color: "#ffffff"
                        text: qsTr("")
                        anchors.fill: parent
                        font.pointSize: 10
                    }
                }
            }
        }
    }
    Connections{
        target: backend
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:800}
}
##^##*/
