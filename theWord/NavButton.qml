import QtQuick 2.0
import Ubuntu.Components 1.1

Rectangle {
    id: aNavButton
    property string state: "";

    
    border.color: "grey"
    width: parent.width/2;
    height: parent.height;
    Icon {
        anchors.centerIn: parent;
        height: parent.height - units.gu(1);
        name: (parent.state == "right")? "go-next":"go-previous";
    }

    MouseArea {
        anchors.fill: parent;
        onPressed: {
            aNavButton.color = "#F0F0F0"; // should be based on Theme
        }
        onReleased: {
            aNavButton.color = "white"; // should be based on Theme
        }
        onClicked: {
            console.log("I've been clicked!");
        }
    }
}
