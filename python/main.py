import sys
from PyQt5.QtCore import QObject,pyqtSlot, QUrl
from PyQt5.QtGui import QGuiApplication, QFont
from PyQt5.QtQml import QQmlApplicationEngine

import os
os.environ["QT_QUICK_CONTROLS_STYLE"] = "Universal"  # or "Universal", "Default", etc.


class CreateWellButton(QObject):

    @pyqtSlot()
    def on_button_clicked(self):
        print("Button was clicked!")


if __name__ == '__main__':
    pipmate_app = QGuiApplication(sys.argv) 

    default_font = QFont("Arial", 12)
    pipmate_app.setFont(default_font)

    createWellButton = CreateWellButton()
    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("createWellButton", createWellButton)

    engine.addImportPath("pipmate_old/pipmate/imports")

    engine.load(QUrl("pipmate_old/pipmate/qml/pages/welcome_screen_window.qml"))
    
    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(pipmate_app.exec_())
