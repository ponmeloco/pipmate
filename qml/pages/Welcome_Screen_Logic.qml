import QtQuick 2.15
import QtQuick.Controls 2.15
import Pipmate_GUI 1.0
import QtQuick.Window 2.15


Window {
    
    visible: true
    width: 1000
    height: 600
    title: "pipmate"

    Welcome_Screen_Form{
        anchors.fill: parent
        _create_new_well_button.onClicked: console.log("Button Pressed")

    }
}
