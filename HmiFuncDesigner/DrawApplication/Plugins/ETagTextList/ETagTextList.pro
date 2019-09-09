include(../../DrawApplicationPlugin.pri)
include(../../QtPropertyBrowserEx/QtPropertyBrowserEx.pri)

CONFIG(debug, debug|release) { #debug
    win32 {
        LIBS += -L$$IDE_LIBRARY_PATH -lQtPropertyBrowserd
        LIBS += -L$$LINK_LIBRARY_PATH -lTagManagerd
        LIBS += -L$$LINK_LIBRARY_PATH -lUtilsd
        LIBS += -L$$LINK_LIBRARY_PATH -lDrawUtilsd
    }
    unix {
        LIBS += -L$$IDE_LIBRARY_PATH -lQtPropertyBrowser
        LIBS += -L$$LINK_LIBRARY_PATH -lTagManager
        LIBS += -L$$LINK_LIBRARY_PATH -lUtils
        LIBS += -L$$LINK_LIBRARY_PATH -lDrawUtils
    }
} else { # release
    LIBS += -L$$IDE_LIBRARY_PATH -lQtPropertyBrowser
    LIBS += -L$$LINK_LIBRARY_PATH -lTagManager
    LIBS += -L$$LINK_LIBRARY_PATH -lUtils
    LIBS += -L$$LINK_LIBRARY_PATH -lDrawUtils
}

SOURCES += \
    ../../Public/Element.cpp \
    ElementTagTextList.cpp \
    TagTextListPlugin.cpp

HEADERS += \
    ../../Public/PublicDefine.h \
    ../../Public/PublicDefine.h \
    ../../IDrawApplicationPlugin/IDrawApplicationPlugin.h \
    ../../Public/Element.h \
    ElementTagTextList.h \
    TagTextListPlugin.h

DISTFILES += ETagTextList.json

RESOURCES += \
    images.qrc



