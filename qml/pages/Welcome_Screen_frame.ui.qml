

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import Pipmate_GUI 1.0
import QtQuick.Layouts 1.15

Rectangle {
    id: welcome_screen_rectangle
    width: 1000
    height: 600
    color: "#1978a5"
    border.color: "#00000000"
    layer.enabled: false
    antialiasing: true
    clip: false

    Label {
        id: background_image_label
        x: 50
        y: 150
        text: qsTr("")
        anchors.fill: parent
        layer.enabled: false
        layer.smooth: false
        layer.wrapMode: ShaderEffectSource.Repeat
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        AnimatedImage {
            id: background_bubble_animation
            anchors.fill: parent
            source: "../../assets/images/background_bubble_animation.gif"
            playing: true
            paused: false
            transformOrigin: Item.Left
            scale: 1
            autoTransform: false
            asynchronous: false
            cache: false
            clip: false
            antialiasing: true
            speed: 1.2
            fillMode: Image.Stretch
        }
    }

    Button {
        id: create_new_well_button
        width: 150
        height: 45
        background: Rectangle {
            color: create_new_well_button.pressed ? "#C0808080" : "#80808080" // Change colors as needed
            radius: height / 2 // Makes the button fully rounded
        }
        text: qsTr("Create new Well")
        contentItem: Text {
            text: parent.text
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "#ffffff" // Set your desired color here
            anchors.centerIn: parent
        }
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.minimumHeight: 30
        Layout.minimumWidth: 100
        Layout.leftMargin: 10
    }

    ColumnLayout {
        id: last_used_column_layout
        y: 350
        width: 250
        height: 150
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 100
        anchors.bottomMargin: 100
        Text {
            id: last_used_text
            color: "#ffffff"
            text: qsTr("Last used:")
            font.pixelSize: 12
            Layout.bottomMargin: 5
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        ListView {
            id: last_used_list_view
            width: 100
            height: 100
            clip: true
            keyNavigationWraps: false
            orientation: ListView.Vertical
            layoutDirection: Qt.LeftToRight
            snapMode: ListView.NoSnap
            cacheBuffer: 320
            anchors.bottomMargin: 0
            boundsMovement: Flickable.FollowBoundsBehavior
            boundsBehavior: Flickable.DragAndOvershootBounds
            Layout.topMargin: 0
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            spacing: 5
            flickableDirection: Flickable.VerticalFlick
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }
            Layout.preferredWidth: 100
            Layout.preferredHeight: 100
        }
    }

    ColumnLayout {
        id: base_text_column_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 628
        anchors.topMargin: 100
        anchors.leftMargin: 100
        Text {
            id: welcome_text
            color: "#ffffff"
            text: qsTr("Welcome to pipmate")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            font.italic: false
            font.pointSize: 30
        }

        Text {
            id: slogan_text
            color: "#ffffff"
            text: qsTr("Where every experiment finds its mate.")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            Layout.margins: 0
            Layout.leftMargin: 3
        }
    }
}
