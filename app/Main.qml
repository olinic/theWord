import QtQuick 2.0
import Ubuntu.Components 1.1
import TheWord 1.0

/*!
    \brief MainView with Tabs element.
           First Tab has a single Label and
           second Tab has a single ToolbarAction.
*/

MainView {
    id: mainView
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "theword.otter"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(76)
    height: units.gu(100)

    Themes {}
    

    Tabs {
        id: tabs

        

        Tab { // --------- Displays the Bible ----------
            title: i18n.tr("theWord"); // Change this to Bible Chapter
            
            page: Page {
                BibleReader {}
            }
        }
        
        Tab { // --------- Settings for The Word ------------
            title: i18n.tr("Settings");
            
            page: Page {    
                MainSettings {}
            }
        }

        Tab {
            title: i18n.tr("Sample")
            page: Page {

                MyType { // not visible on screen (created from C++)
                    id: myType
        
                    Component.onCompleted: { // set the helloWorld value
                        myType.helloWorld = i18n.tr("Hello world..")
                    }
                }
        
                Column {
                    spacing: units.gu(1)
                    anchors {
        
                        fill: parent
                    }
        
                    Label { // visible label
                        id: label
                        objectName: "label"
        
                        text: myType.helloWorld // use myType helloWorld as the text
                    }
        
                    Button {
                        objectName: "button"
                        width: parent.width
        
                        text: i18n.tr("Tap me!")
        
                        onClicked: {
                            myType.helloWorld = i18n.tr("..from Cpp Backend") // change the helloWorld value that is then reflected in the label
                        }
                    }
        
        
                    
        
                }
                Label {
                    id: velocity
                    anchors.centerIn: parent;
                    text: "0";
                }
                NavBar {
                    anchors.bottom: parent.bottom;
        
                }
                
                
            }
        }

    }
}

