import QtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow {
    id: panel
    
    color: "transparent"  

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight:40
    margins {
        top: 0
        left: 0
        right: 0
    }

    Rectangle {
        id: bar
        anchors.fill: parent
        color: "#202020"
        radius: 15
        border.color: "#333333"
        border.width: 3
        opacity: 0.65  

        Row {
            id: workspacesRow

            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: 16
            }
            spacing: 8

            Repeater {
                model: Hyprland.workspaces

                Rectangle {
                    width: 30
                    height: 30
                    radius: 15
                    color: modelData.active ? "#4a9eff" : "#333333"
                    border.color: "#555555"
                    border.width: 2

                    MouseArea {
                        anchors.fill: parent
                        onClicked: Hyprland.dispatch("workspaces " + modelData.id)
                    }

                    Text {
                        text: modelData.id
                        anchors.centerIn: parent
                        color: modelData.active ? "#ffffff" : "#cccccc"
                        font.pixelSize: 12
                        font.family: "Inter, sans-serif"
                    }
                }
            }
            Text {
                visible: Hyprland.workspaces.length === 0
                text: "No workspaces"
                color: "#ffffff"
                font.pixelSize: 14
            }
        }
        Text {
            text: Time.time
            color: "#ffffff"
            font.pixelSize: 18
            anchors {
                right: parent.right
            }
        } 
    }       
}