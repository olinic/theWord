import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Themes 0.1

ListModel {
    id: colors


    ListElement {
        name: "Light"
        background: "#FFFFFF"   // white
        txt: "#000000"          // black
        symbol: "dark"

        accent: UbuntuColors.darkGrey;   // dark
        accentTxt: "#FFFFFF"    // white
        accentSymbol: "light"
    }
    ListElement {
        name: "Light-Blue"
        background: "#FFFFFF"   // white
        txt: "#000000"          // black
        symbol: "dark"

        accent: "#0000BB"       // blue
        accentTxt: "#FFFFFF"
        accentSymbol: "light"
    }

    ListElement {
        name: "Sepia"
        background: "#FBF0D9"   // sepia
        txt: "#5F4B32"          // not black
        symbol: "dark"

        accent: "#5F4B32"       // reverse
        accentTxt: "#FBF0D9"
        accentSymbol: "light"
    }
    ListElement {
        name: "Ubuntu"
        background: "#FFFFFF" // white
        txt: "#000000" // black
        symbol: "dark"

        accent: "#0000BB" // blue
        accentTxt: ""
        accentSymbol: "light"
    }
    ListElement {
        name: "Dark"
        background: "#FFFFFF" // white
        txt: "#000000" // black
        symbol: "dark"

        accent: "#0000BB" // blue
        accentTxt: ""
        accentSymbol: "light"
    }
    ListElement {
        name: "Black"
        background: "#FFFFFF" // white
        txt: "#000000" // black
        symbol: "dark"

        accent: "#0000BB" // blue
        accentTxt: ""
        accentSymbol: "light"
    }


}

/*Item {
    

    //--------------------------- PALETTES ------------------------------------------
    
    Palette {
        id: darkPalette
        normal: PaletteValues {
            background: "#221E1C"
            backgroundText: "#33F3F3E7"
            base: "#19000000"
            baseText: "#FFFFFF"
            foreground: "#888888"
            foregroundText: "#FFFFFF"
            overlay: "#F2F2F2"
            overlayText: "#888888"
            field: "#19000000"
            fieldText: "#7F7F7F7F"
        }
        selected: PaletteValues {
            background: "#88D6D6D6" // FIXME: not from design
            backgroundText: "#FFFFFF"
            selection: Qt.rgba(UbuntuColors.blue.r, UbuntuColors.blue.g, UbuntuColors.blue.b, 0.2)
            foreground: UbuntuColors.orange
            foregroundText: UbuntuColors.darkGrey
            field: "#FFFFFF"
            fieldText: "#888888"
        }
    }
}*/
