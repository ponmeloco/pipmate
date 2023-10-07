// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 2.15
import QtQuick.Window 2.15
import Pipmate_GUI 1.0

Window {
    id: welcome_screen_window
    width: 1000
    height: 600

    visible: true
    color: "#ffffff"
    maximumHeight: 600
    maximumWidth: 1000
    minimumHeight: 600
    minimumWidth: 1000
    title: "Pipmate_GUI"

    Welcome_Screen_frame {
        id: welcome_screen_frame
        anchors.fill: parent
    }

}

