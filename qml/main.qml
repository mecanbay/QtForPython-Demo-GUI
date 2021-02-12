import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls/"


Window {
    id: mainWindow
    width: 1000
    height: 580
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    flags: Qt.Window | Qt.FramelessWindowHint

    property int windowStatus: 0
    property int windowMargin: 10

    QtObject{
        id:internal
        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                btnMax.iconSource = "../images/svg_images/iconmonstr-minimize-thin.svg"

            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                btnMax.iconSource = "../images/svg_images/iconmonstr-maximize-thin.svg"
            }
        }

        function ifMaxWindow(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
            }
        }

        function restoreMargin(){
            windowStatus = 0
            windowMargin = 10


        }
    }





    Rectangle {
        id: bg
        width: 1000
        height: 580
        color: "#1e3535"
        border.color: "#2d4f4f"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin
        z:1

        Rectangle {
            id: appCont
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#0e1919"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ToggleBtn {
                    id: toggleBtn
                    width: 70
                    height: 60
                    anchors.left: parent.left
                    anchors.top: parent.top
                    layer.mipmap: true
                    focus: false
                    antialiasing: true
                    smooth: true
                    highlighted: false
                    autoRepeat: false
                    flat: false
                    iconSource: "../images/svg_images/vnc.png"
                    colorMouseOver: "#1e3535"
                    colorDefault: "#0e1919"
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                    onClicked: animationMenu.running = true

                }

                Rectangle {
                    id: topBarDes
                    y: 45
                    width: 60
                    height: 25
                    color: "#182a2a"
                    anchors.left: toggleBtn.right
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0

                    Label {
                        id: topAppDesc
                        color: "#599d9d"
                        text: qsTr("Yazılım Durumu : Güncel")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 9
                        font.bold: false
                        leftPadding: 10
                        anchors.rightMargin: 230
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                    }

                    Label {
                        id: topAppDescRight
                        color: "#599d9d"
                        text: qsTr("|  Ana Sayfa")
                        anchors.left: topAppDesc.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        rightPadding: 10
                        font.pointSize: 9
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }
                }

                Rectangle {
                    id: tittleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: toggleBtn.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    DragHandler{
                        onActiveChanged: if(active){
                                             mainWindow.startSystemMove()
                                             internal.ifMaxWindow()
                                         }
                    }

                    Image {
                        id: appIcon
                        width: 28
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../images/svg_images/vncw.png"
                        mipmap: true
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 5
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: appName
                        color: "#90ffff"
                        text: qsTr("MEC - Python-Qml Demo GUI ")
                        anchors.left: appIcon.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                        leftInset: 0
                        font.pointSize: 9
                        anchors.leftMargin: 0
                    }
                }

                Row {
                    id: row
                    anchors.left: tittleBar.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: topBarDes.top
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    RowBtn{
                        colorMouseOver: "#20b063"
                        colorDefault: "#0e1919"
                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargin()
                        }

                    }

                    RowBtn {
                        id:btnMax
                        iconSource: "../images/svg_images/iconmonstr-maximize-thin.svg"
                        colorMouseOver: "#20b063"
                        colorDefault: "#0e1919"
                        onClicked: internal.maximizeRestore()
                    }

                    RowBtn {
                        iconSource: "../images/svg_images/close-button.svg"
                        colorMouseOver: "#ff0000"
                        colorDefault: "#0e1919"
                        onClicked: mainWindow.close()
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#0e1919"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: false
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.leftMargin: 0

                    PropertyAnimation{
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 70) return 250; else return 70
                        duration: 500
                        easing.type: Easing.InOutQuint
                    }

                    Column {
                        id: leftMenuColumn
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuBtn {
                            id: btnHome
                            width: leftMenu.width
                            iconSource: "../images/svg_images/house.svg"
                            iconHeigth: 28
                            iconWeigth: 28
                            rightRec: "#90ffff"
                            leftRec: "#90ffff"
                            colorOvers: "#ffffff"
                            colorMouseOver: "#1e3535"
                            colorDefault: "#0e1919"
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btnSysinfo.isActiveMenu = false
                                btnPrograms.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnUpdate.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/homePages.qml"))
                                topAppDescRight.text = "| Ana Sayfa"
                            }

                        }

                        LeftMenuBtn {
                            id: btnSysinfo
                            width: leftMenu.width
                            isActiveMenu: false
                            iconWeigth: 28
                            iconHeigth: 28
                            iconSource: "../images/svg_images/controls.svg"
                            btnText: "Sistem Bilgisi"
                            colorMouseOver: "#1e3535"
                            rightRec: "#90ffff"
                            colorOvers: "#ffffff"
                            colorDefault: "#0e1919"
                            leftRec: "#90ffff"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSysinfo.isActiveMenu = true
                                btnPrograms.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnUpdate.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/systemInfo.qml"))
                                topAppDescRight.text = "| Sistem Bilgisi"

                            }
                        }

                        LeftMenuBtn {
                            id: btnPrograms
                            width: leftMenu.width
                            isActiveMenu: false
                            iconSource: "../images/svg_images/feature.svg"
                            iconHeigth: 28
                            iconWeigth: 28
                            btnText: "Programlar"
                            colorMouseOver: "#1e3535"
                            rightRec: "#90ffff"
                            colorOvers: "#ffffff"
                            colorDefault: "#0e1919"
                            leftRec: "#90ffff"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSysinfo.isActiveMenu = false
                                btnPrograms.isActiveMenu = true
                                btnSettings.isActiveMenu = false
                                btnUpdate.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/livPrograms.qml"))
                                topAppDescRight.text = "| Güncel Programlar"
                            }
                        }

                        LeftMenuBtn {
                            id: btnUpdate
                            width: leftMenu.width
                            iconSource: "../images/svg_images/update.svg"
                            btnText: "Yazılım Güncellemesi"
                            colorDefault: "#0e1919"
                            iconHeigth: 28
                            colorOvers: "#ffffff"
                            isActiveMenu: false
                            leftRec: "#90ffff"
                            iconWeigth: 28
                            colorMouseOver: "#1e3535"
                            rightRec: "#90ffff"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSysinfo.isActiveMenu = false
                                btnPrograms.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnUpdate.isActiveMenu = true
                                stackView.push(Qt.resolvedUrl("pages/softwareUpdate.qml"))
                                topAppDescRight.text = "| Yazılım Güncellemesi"

                            }
                        }
                    }
                }

                LeftMenuBtn {
                    id: btnSettings
                    x: 0
                    y: 323
                    width: leftMenu.width
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 25
                    colorMouseOver: "#1e3535"
                    isActiveMenu: false
                    rightRec: "#90ffff"
                    colorOvers: "#ffffff"
                    colorDefault: "#0e1919"
                    iconHeigth: 28
                    leftRec: "#90ffff"
                    btnText: "Ayarlar"
                    iconSource: "../images/svg_images/14579490351552644372.svg"
                    iconWeigth: 28
                    onClicked: {
                        btnHome.isActiveMenu = false
                        btnSysinfo.isActiveMenu = false
                        btnPrograms.isActiveMenu = false
                        btnSettings.isActiveMenu = true
                        btnUpdate.isActiveMenu = false
                        stackView.push(Qt.resolvedUrl("pages/settings.qml"))
                        topAppDescRight.text = "| Ayarlar"
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#1e3535"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 25
                    anchors.topMargin: 0

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        clip: false
                        initialItem: Qt.resolvedUrl("pages/homePages.qml")
                    }

                }

                Rectangle {
                    id: bottomBar
                    color: "#182a2a"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: bottomAppDesc
                        color: "#599d9d"
                        text: qsTr("mecanbay")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.topMargin: 0
                        anchors.leftMargin: 0
                        anchors.rightMargin: 30
                        font.bold: false
                        leftPadding: 10
                        anchors.bottomMargin: 0
                        font.pointSize: 9
                    }
                }

            }
        }
    }

    DropShadow {
        x: 10
        y: 10
        opacity: 1
        visible: true
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 16
        color: "#262626"
        source: bg
        z:0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
