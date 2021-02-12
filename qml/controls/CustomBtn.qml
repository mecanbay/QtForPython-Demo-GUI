import QtQuick 2.0
import QtQuick.Controls 2.15

Button{
    id:customBtn

    property color colorDefault: "#599d9d"
    property color colorMouseOver: "#487e7e"
    property color colorPressed: "#274444"
    property color colorText: "#ffffff"
    QtObject{
        id: internal
        property var dynamicColor: if(customBtn.down){
                                       customBtn.down ? colorPressed : colorDefault
                                   }else{
                                       customBtn.hovered ? colorMouseOver : colorDefault
                                   }
    }


    text: qsTr("Ana Sayfa")
    implicitHeight: 40
    implicitWidth: 200
    background: Rectangle{
        color: internal.dynamicColor
        radius: 10
    }

    contentItem: Item {
        id: item1
        Text {
            id: textBtn
            color: "#ffffff"
            text: customBtn.text
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:200}
}
##^##*/
