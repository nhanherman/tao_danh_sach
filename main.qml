import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("")

    /*ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: parent.width
            }
        }
    }*/




    /*Page {
        anchors.fill: parent
        header: Label {
            padding: 10
            text: qsTr("Contacts")
            font.pixelSize: 2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }*/
 Rectangle{
     width:200;height:200
     color:mouse_kick.containsPress?"yellow":"red"

MouseArea

{ id: mouse_kick
    width:100;height:100
    anchors.fill:parent
    onClicked:
    {
        ListView {
                id: listView
                anchors.fill: parent
                topMargin: 20
                leftMargin: 48
                bottomMargin: 48
                rightMargin: 48
                spacing: 20
                model: ["NHAN", "NHAN1", "NHAN2"]
                delegate: ItemDelegate {
                    text: modelData
                    width: listView.width/10 - listView.leftMargin/10 - listView.rightMargin/10
                    height: avatar.implicitHeight/20
                    leftPadding: avatar.implicitWidth+32

                    Image {
                        width:200
                        height:100

                        id: avatar
                        source: "qrc:/" + modelData.replace(" "," ") + ".jpg"
                    }
                }
        }




}
 }
   /* ListView {
        id: listView
        anchors.fill: parent
        topMargin: 20
        leftMargin: 48
        bottomMargin: 48
        rightMargin: 48
        spacing: 20
        model: ["NHAN", "NHAN1", "NHAN2"]
        delegate: ItemDelegate {
            text: modelData
            width: listView.width/10 - listView.leftMargin/10 - listView.rightMargin/10
            height: avatar.implicitHeight/20
            leftPadding: avatar.implicitWidth+32

            Image {
                width:200
                height:100

                id: avatar
                source: "qrc:/" + modelData.replace(" "," ") + ".jpg"
            }
        }
    }*/


}
}
