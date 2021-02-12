from PySide2.QtGui import *
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import *
from PySide2.QtWidgets import *
import sys
import os


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)
        

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)
    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
