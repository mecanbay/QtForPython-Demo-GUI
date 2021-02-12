import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 900
    Rectangle {
        id: rectangle
        color: "#1e3535"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        ScrollView {
            id: scrollView
            width: 920
            visible: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            contentHeight: 695
            contentWidth: 766
            clip: true

            Rectangle {
                id: enTry
                height: 218
                color: "#0f1a1a"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: -57
                anchors.leftMargin: 15
                anchors.topMargin: 15

                Rectangle {
                    id: rectangle1
                    color: "#0f1a1a"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 18
                    anchors.bottomMargin: 20
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20

                    Image {
                        id: image1
                        x: 0
                        y: 3
                        width: 205
                        height: 176
                        source: "../../images/svg_images/1111.jpg"
                        clip: false
                        asynchronous: true
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: labelUsername
                        x: 219
                        y: 94
                        width: 549
                        height: 19
                        color: "#ffffff"
                        text: qsTr("Hoş Geldin, MEC - Ns4r")
                        anchors.top: image1.top
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        font.pointSize: 12
                    }

                    Label {
                        id: labelUsername1
                        x: 211
                        y: 40
                        width: 549
                        height: 19
                        color: "#ff0000"
                        text: qsTr("https://github.com/mecanbay")
                        anchors.top: image1.top
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.leftMargin: 0
                        font.pointSize: 12
                        anchors.topMargin: 79
                    }

                    Label {
                        id: labelUsername2
                        x: 211
                        y: 43
                        width: 549
                        height: 19
                        color: "#ff0000"
                        text: qsTr("https://twitter.com/mecanbay")
                        anchors.top: image1.top
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.leftMargin: 0
                        font.pointSize: 12
                        anchors.topMargin: 54
                    }
                }
            }

            Rectangle {
                id: rectangle2
                x: 35
                y: 91
                height: 309
                color: "#0f1a1a"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: enTry.bottom
                anchors.rightMargin: -57
                anchors.leftMargin: 15
                anchors.topMargin: 20

                Image {
                    id: imageLicence
                    width: 210
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "../../images/svg_images/update.svg"
                    antialiasing: true
                    asynchronous: true
                    mirror: false
                    anchors.bottomMargin: 20
                    anchors.leftMargin: 20
                    anchors.topMargin: 20
                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    id: rectangle4
                    x: 248
                    y: 20
                    width: 552
                    height: 269
                    color: "#1e3535"
                    radius: 20

                    Label {
                        id: label2
                        x: 21
                        y: 24
                        width: 143
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("Operation System :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelOs
                        x: 170
                        y: 24
                        width: 374
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label3
                        x: 21
                        y: 49
                        width: 135
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("System User :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelUser
                        x: 162
                        y: 49
                        width: 287
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label4
                        x: 21
                        y: 74
                        width: 108
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("Product KEY :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelKey
                        x: 143
                        y: 74
                        width: 306
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label5
                        x: 21
                        y: 100
                        width: 87
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("Hostname :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelHost
                        x: 114
                        y: 100
                        width: 335
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label6
                        x: 21
                        y: 125
                        width: 108
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("Architecture :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelArch
                        x: 125
                        y: 125
                        width: 372
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label7
                        x: 21
                        y: 150
                        width: 116
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("System License : ")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelLicence
                        x: 148
                        y: 150
                        width: 301
                        height: 19
                        color: "#00ff00"
                        text: qsTr("NULL")
                        font.pointSize: 12
                    }

                    Label {
                        id: label8
                        x: 21
                        y: 175
                        width: 63
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("Device :")
                        font.pointSize: 12
                    }

                    Label {
                        id: labelChz
                        x: 84
                        y: 175
                        width: 286
                        height: 19
                        color: "#f9f9f9"
                        text: qsTr("NULL")
                        font.pointSize: 12
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
    D{i:0;formeditorZoom:0.9}D{i:7}D{i:8}
}
##^##*/
