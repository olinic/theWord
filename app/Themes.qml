import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Themes 0.1

Item {
    

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
}