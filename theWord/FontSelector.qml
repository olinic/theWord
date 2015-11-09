import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0

/*
  Offer serif and sans

  Serif - good for long reading and on print documents.
  Sans - good for web documents and for small print

  Fonts to try
  ----------------
  Garamond
  Georgia
  Verdana

  */


Item {
    width: parent.width;
    height: childrenRect.height;

    Picker {
        model: [8, 9, 10, 11, 12, 14, 16, 18, 22];
        delegate: PickerDelegate {
            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: modelData;
            }
        }

        selectedIndex: 4;
    }
}
