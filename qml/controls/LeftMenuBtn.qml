import QtQuick 2.0
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

Button{
    id: btnLeftMenu
    property url iconSource: "../../images/svg_images/home.svg"
    property color colorDefault: "#599d9d"
    property color colorMouseOver: "#182a2a"
    property color colorPressed: "#274444"
    property color colorOvers: "#ffffff"
    property int iconHeigth: 35
    property int iconWeigth: 25
    property string btnText: "Ana Sayfa"
    property color leftRec: "#c00"
    property color rightRec: "#c00"
    property bool isActiveMenu: true


    QtObject{
        id: internal
        property var dynamicColor: if(btnLeftMenu.down){
                                       btnLeftMenu.down ? colorPressed : colorDefault
                                   }else{
                                       btnLeftMenu.hovered ? colorMouseOver : colorDefault
                                   }
    }

    Label {
        id: label
        y: 23
        color: "#ffffff"
        text: btnText
        anchors.left: parent.left
        anchors.leftMargin: 80
        font.pointSize: 10
    }

    width: 250
    height: 60
    text: ""



    implicitHeight: 60
    implicitWidth: 250

    background: Rectangle{
        id:bgBtn
        color: internal.dynamicColor

        Rectangle{
            anchors{
                top: parent.top
                bottom: parent.bottom
                left: parent.left
            }

            color: leftRec
            width: 3
            visible: isActiveMenu
        }

        Rectangle{
            anchors{
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }

            color: rightRec
            width: 5
            visible: isActiveMenu
        }


        Image {
            id: iconBtn
            source: iconSource
            anchors.leftMargin: 25
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            sourceSize.height: iconHeigth
            sourceSize.width: iconWeigth
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: iconWeigth
            anchors.left: parent.left
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true
        }
        ColorOverlay{
            anchors.fill: iconBtn
            color: "#ffffff"
            source: iconBtn
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWeigth
            height: iconHeigth
        }

        /*Text {
            width: 109
            color: "#ffffff"
            text: btnText
            font: btnLeftMenu.font
            anchors.left: iconBtn.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            minimumPixelSize: 12
            maximumLineCount: 10000
            anchors.bottomMargin: 20
            anchors.topMargin: 22
            anchors.verticalCenter: btnLeftMenu.verticalCenter
            anchors.horizontalCenter: btnLeftMenu.horizontalCenter
            anchors.leftMargin: 30

        }*/

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2;height:60;width:250}
}
##^##*/
