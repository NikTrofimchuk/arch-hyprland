//@ pragma UseQApplication

import Quickshell
import QtQuick
import "./modules/"

ShellRoot {
    id: root

    Loader {
        active: true
        sourceComponent: Bar {}
    }
}