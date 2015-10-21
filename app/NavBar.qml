import QtQuick 2.0

/*

  This component allows the user to select
    --> for the next chapter
            or
    <-- for the previous chapter

  This will need to communicate with the BibleReader to let it know that it needs to go to the next chapter.

*/


Rectangle {
    
    anchors {
        left: parent.left;
        right: parent.right;
        
    }
    height: units.gu(5);

    Row {
        width: parent.width
        height: parent.height
        NavButton {
            state: "left";
        }

        NavButton {
            state: "right";
        }
    }
}
