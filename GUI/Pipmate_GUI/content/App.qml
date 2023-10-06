// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 2.15
import QtQuick.Window 2.15
import Pipmate_GUI 1.0

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Pipmate_GUI"

    Welcome_Screen {
        id: mainScreen
    }

}

