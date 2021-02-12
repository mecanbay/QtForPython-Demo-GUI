import QtQuick 2.0
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

Button{
    id: btnToggle

    property url iconSource: "../../images/svg_images/menu.svg"
    property color colorDefault: "#599d9d"
    property color colorMouseOver: "#182a2a"
    property color colorPressed: "#274444"
    property color colorOvers: "#ffffff"

    QtObject{
        id: internal
        property var dynamicColor: if(btnToggle.down){
                                       btnToggle.down ? colorPressed : colorDefault
                                   }else{
                                       btnToggle.hovered ? colorMouseOver : colorDefault
                                   }
    }

    width: 70
    height: 60



    implicitHeight: 60
    implicitWidth: 70

    background: Rectangle{
        id:bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: iconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 35
            width: 35
            fillMode: Image.PreserveAspectFit
        }
        ColorOverlay{
            color: "#ffffff"
            anchors.fill: iconBtn
            source: iconBtn
            antialiasing: true
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:6}
}
##^##*/
