import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#1e3535"
        anchors.fill: parent

        Label {
            id: label
            x: 271
            y: 219
            width: 247
            height: 42
            color: "#000000"
            text: qsTr("Sistem Bilgileri")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 23
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:800}
}
##^##*/
