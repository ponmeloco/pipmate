import sys
from PyQt6.QtCore import QUrl
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine

if __name__ == '__main__':

    # Creates a QGuiApplication
    pipmate_app = QGuiApplication(sys.argv) 

    # Creates a QQmlApplicationEngine instance
    engine = QQmlApplicationEngine()  

    # Sets the path to the Pipmate_GUI
    engine.addImportPath("imports") 

    # Sets the starting qml file for the application
    starting_qml_file_path = "qml/pages/Welcome_Screen_Logic.qml"

    # Loads the engine with the set filepath
    engine.load(QUrl.fromLocalFile(starting_qml_file_path))

    # Checks if the QML file loaded successfully
    if not engine.rootObjects():
        sys.exit(-1)

    # Starts the application's event loop
    sys.exit(pipmate_app.exec_())  
