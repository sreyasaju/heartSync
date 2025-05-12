# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'form.ui'
##
## Created by: Qt User Interface Compiler version 6.7.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QBrush, QColor, QConicalGradient, QCursor,
    QFont, QFontDatabase, QGradient, QIcon,
    QImage, QKeySequence, QLinearGradient, QPainter,
    QPalette, QPixmap, QRadialGradient, QTransform)
from PySide6.QtWidgets import (QApplication, QFrame, QHBoxLayout, QMainWindow,
    QMenuBar, QScrollArea, QScrollBar, QSizePolicy,
    QStatusBar, QWidget)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(800, 600)
        MainWindow.setStyleSheet(u"bcakground-color: rgb(230, 220, 253)\n"
"")
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.scrollArea = QScrollArea(self.centralwidget)
        self.scrollArea.setObjectName(u"scrollArea")
        self.scrollArea.setGeometry(QRect(0, 0, 801, 551))
        self.scrollArea.setStyleSheet(u"background-color: rgb(255, 255, 255);")
        self.scrollArea.setWidgetResizable(True)
        self.scrollAreaWidgetContents = QWidget()
        self.scrollAreaWidgetContents.setObjectName(u"scrollAreaWidgetContents")
        self.scrollAreaWidgetContents.setGeometry(QRect(0, 0, 799, 549))
        self.verticalScrollBar = QScrollBar(self.scrollAreaWidgetContents)
        self.verticalScrollBar.setObjectName(u"verticalScrollBar")
        self.verticalScrollBar.setGeometry(QRect(770, 20, 16, 501))
        self.verticalScrollBar.setOrientation(Qt.Orientation.Vertical)
        self.horizontalLayoutWidget = QWidget(self.scrollAreaWidgetContents)
        self.horizontalLayoutWidget.setObjectName(u"horizontalLayoutWidget")
        self.horizontalLayoutWidget.setGeometry(QRect(0, 0, 171, 551))
        self.horizontalLayout = QHBoxLayout(self.horizontalLayoutWidget)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.frame = QFrame(self.horizontalLayoutWidget)
        self.frame.setObjectName(u"frame")
        self.frame.setStyleSheet(u"background-color: rgb(237, 237, 243)")
        self.frame.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame.setFrameShadow(QFrame.Shadow.Sunken)

        self.horizontalLayout.addWidget(self.frame)

        self.scrollArea_2 = QScrollArea(self.scrollAreaWidgetContents)
        self.scrollArea_2.setObjectName(u"scrollArea_2")
        self.scrollArea_2.setGeometry(QRect(160, 0, 631, 551))
        self.scrollArea_2.setFrameShape(QFrame.Shape.NoFrame)
        self.scrollArea_2.setLineWidth(0)
        self.scrollArea_2.setWidgetResizable(True)
        self.scrollAreaWidgetContents_2 = QWidget()
        self.scrollAreaWidgetContents_2.setObjectName(u"scrollAreaWidgetContents_2")
        self.scrollAreaWidgetContents_2.setGeometry(QRect(0, 0, 631, 551))
        self.widget = QWidget(self.scrollAreaWidgetContents_2)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(20, 40, 581, 91))
        self.widget.setStyleSheet(u"background-color: rgb(244, 244, 244);\n"
"border-radius: 15px;\n"
"")
        self.widget_2 = QWidget(self.scrollAreaWidgetContents_2)
        self.widget_2.setObjectName(u"widget_2")
        self.widget_2.setGeometry(QRect(20, 150, 261, 121))
        self.widget_2.setStyleSheet(u"background-color: rgb(244, 244, 244);\n"
"border-radius: 15px;\n"
"")
        self.widget_5 = QWidget(self.scrollAreaWidgetContents_2)
        self.widget_5.setObjectName(u"widget_5")
        self.widget_5.setGeometry(QRect(300, 150, 131, 121))
        self.widget_5.setStyleSheet(u"background-color: rgb(244, 244, 244);\n"
"border-radius: 15px;\n"
"")
        self.widget_6 = QWidget(self.scrollAreaWidgetContents_2)
        self.widget_6.setObjectName(u"widget_6")
        self.widget_6.setGeometry(QRect(450, 150, 151, 121))
        self.widget_6.setStyleSheet(u"background-color: rgb(244, 244, 244);\n"
"border-radius: 15px;\n"
"")
        self.scrollArea_2.setWidget(self.scrollAreaWidgetContents_2)
        self.scrollArea.setWidget(self.scrollAreaWidgetContents)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 800, 24))
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
    # retranslateUi

