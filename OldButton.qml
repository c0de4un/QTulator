import QtQuick 2.0

// root-Rectangle
Rectangle {

    // ID
    id: button
    // Signals
    signal btnSignal_onClick
    // Properties Aliases
    property alias text: text.text
    // Border
    border.width: 1
    border.color: "white"
    // Properties
    property real textHeight: height - 2
    property real fontHeight: 0.3
    property bool pressed: mouse.pressed
    property real implicitMargin: (width - text.implicitWidth) / 2

    // Text (Label)
    Text {
        // ID
        id: textLabel
        // Text-Content
        text: qsTr("text")
        // Anchors
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        // Height
        height: parent.textHeight
        // Text-Alignment
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        // Font-Size
        font.pixelSize: height * fontHeight
        // Text-Color
        color: "#1b1c1d"
        // Font-Style
        font.family: "Open Sans Regular"
    } // Text

    // Pointer-Input
    MouseArea {
        // ID
        id: mouse
        // Anchors
        anchors.fill: parent
        // Signal
        onClicked: button.btnSignal_onClick( )
    } // MouseArea

} // root-Rectangle
