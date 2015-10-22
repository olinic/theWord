import QtQuick 2.4
import Ubuntu.Components 1.2

OptionSelector {
    model: themeList;
    expanded: false;

    delegate: OptionSelectorDelegate {
        text: name;
    }
}

