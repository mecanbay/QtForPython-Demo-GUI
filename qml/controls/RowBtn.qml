import QtQuick 2.0
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

Button{
    id: rowBtn

    property url iconSource: "../../images/svg_images/minimize.svg"
    property color colorDefault: "#599d9d"
    property color colorMouseOver: "#182a2a"
    property color colorPressed: "#274444"
    property color colorOvers: "#ffffff"

    QtObject{
        id: internal
        property var dynamicColor: if(rowBtn.down){
                                       rowBtn.down ? colorPressed : colorDefault
                                   }else{
                                       rowBtn.hovered ? colorMouseOver : colorDefault
                                   }
    }

    width: 35
    height: 35




    background: Rectangle{
        id:bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: iconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 16
            width: 16
            fillMode: Image.PreserveAspectFit
        }
        ColorOverlay{
            color: "#ffffff"
            anchors.fill: iconBtn
            source: iconBtn
            antialiasing: false
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:16}
}
##^##*/
