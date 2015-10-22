import QtQuick 2.4
import Ubuntu.Components 1.2

/*
  Main Settings for the Bible Application

  Settings will include the following:
  |
  |    Themes - predefined
  |
  |    Font
  |      size
  |      typeface
  |
  |    Layouts (Select One)
  |      Default
  |      Verse on Each Line
  |
  |    Version (Select One)
  |    Version Manager (opens separate tab)
  |_________________________________________


  */


Item {
    
    anchors.fill: parent;
    height: childrenRect.height;
    width: childrenRect.width;
    
    
    ListModel {
        id: themeList
        ListElement {
            name: "Light"
        }
        ListElement {
            name: "Dark"
        }
        ListElement {
            name: "Ubuntu"
        }
        ListElement {
            name: "Sepia"
        }
    }
    
    Column {
        anchors.fill: parent;
        spacing: units.gu(1);
        
        
        ThemeSelector {}
        
        FontSelector {}
    }
}
