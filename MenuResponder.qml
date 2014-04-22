import QtQuick 2.1

 Connections {
    target: _menu_controller
    
    onClockwiseRotate: {
        player.orientation -= 90
    }
    onAntiClosewiseRotate: {
        player.orientation += 90
    }
    onToggleFullscreen: {
        main_controller.toggleFullscreen()
    }
    onScreenShot: {
        windowView.screenShot()
    }
    onProportionChanged: {
        root.widthProportion = arguments[0]
        root.heightProportion = arguments[0]
    }
    onStaysOnTop: {
        windowView.staysOnTop = onTop
    }
    onOpenDialog: {
        if (arguments[0] == "file") {
            open_file_dialog.open()
        } else if (arguments[0] == "dir") {
            open_folder_dialog.open()
        } else {
            var value = _input_dialog.show()
            if (value != "") { movieInfo.movie_file = value }
        }
    }
}
