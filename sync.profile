%modules = ( # path to module name map
    "QtGui" => "$basedir/src/gui",
    "QtOpenGL" => "$basedir/src/opengl",
    "QtCore" => "$basedir/src/corelib",
    "QtXml" => "$basedir/src/xml",
    "QtSql" => "$basedir/src/sql",
    "QtNetwork" => "$basedir/src/network",
    "QtTest" => "$basedir/src/testlib",
    "QtDBus" => "$basedir/src/dbus",
    "QtUiTools" => "$basedir/src/uitools",
    "QtDesigner" => "$basedir/tools/uilib",
);
%moduleheaders = ( # restrict the module headers to those found in relative path
);
%classnames = (
    "qglobal.h" => "QtGlobal",
    "qendian.h" => "QtEndian",
    "qconfig.h" => "QtConfig",
    "qplugin.h" => "QtPlugin",
    "qalgorithms.h" => "QtAlgorithms",
    "qcontainerfwd.h" => "QtContainerFwd",
    "qdebug.h" => "QtDebug",
    "qevent.h" => "QtEvents",
    "qnamespace.h" => "Qt",
    "qssl.h" => "QSsl",
    "qtest.h" => "QTest",
    "qtconcurrentmap.h" => "QtConcurrentMap",
    "qtconcurrentfilter.h" => "QtConcurrentFilter",
    "qtconcurrentrun.h" => "QtConcurrentRun",
);
%mastercontent = (
    "core" => "#include <QtCore/QtCore>\n",
    "gui" => "#include <QtGui/QtGui>\n",
    "network" => "#include <QtNetwork/QtNetwork>\n",
    "opengl" => "#include <QtOpenGL/QtOpenGL>\n",
    "xml" => "#include <QtXml/QtXml>\n",
    "uitools" => "#include <QtUiTools/QtUiTools>\n",
    "designer" => "#include <QtDesigner/QtDesigner>\n",
);
%modulepris = (
    "QtCore" => "$basedir/src/modules/qt_core.pri",
    "QtDBus" => "$basedir/src/modules/qt_dbus.pri",
    "QtGui" => "$basedir/src/modules/qt_gui.pri",
    "QtNetwork" => "$basedir/src/modules/qt_network.pri",
    "QtOpenGL" => "$basedir/src/modules/qt_opengl.pri",
    "QtSql" => "$basedir/src/modules/qt_sql.pri",
    "QtTest" => "$basedir/src/modules/qt_testlib.pri",
    "QtXml" => "$basedir/src/modules/qt_xml.pri",
    "QtUiTools" => "$basedir/src/modules/qt_uitools.pri",
    "QtDesigner" => "$basedir/src/modules/qt_uilib.pri",
);

@ignore_for_master_contents = ( "qt.h", "qpaintdevicedefs.h" );
@ignore_for_include_check = ( "qatomic.h" );
@ignore_for_qt_begin_header_check = ( "qiconset.h", "qconfig.h", "qconfig-dist.h", "qconfig-large.h", "qconfig-medium.h", "qconfig-minimal.h", "qconfig-small.h", "qfeatures.h", "qt_windows.h" );
@ignore_for_qt_begin_namespace_check = ( "qconfig.h", "qconfig-dist.h", "qconfig-large.h", "qconfig-medium.h", "qconfig-minimal.h", "qconfig-small.h", "qfeatures.h", "qatomic_arch.h", "qatomic_windowsce.h", "qt_windows.h", "qatomic_macosx.h" );
@ignore_for_qt_module_check = ( "$modules{QtCore}/arch", "$modules{QtCore}/global", "$modules{QtTest}", "$modules{QtDBus}" );
# Modules and programs, and their dependencies.
# Each of the module version specifiers can take one of the following values:
#   - A specific Git revision.
#   - "LATEST_REVISION", to always test against the latest revision.
#   - "LATEST_RELEASE", to always test against the latest public release.
#   - "THIS_REPOSITORY", to indicate that the module is in this repository.
%dependencies = (
    "QtCore" => {
    },
    "QtOpenGL" => {
        "QtCore" => "THIS_REPOSITORY",
        "QtGui" => "THIS_REPOSITORY",
    },
    "QtXml" => {
        "QtCore" => "THIS_REPOSITORY",
    },
    "QtNetwork" => {
        "QtCore" => "THIS_REPOSITORY",
    },
    "QtTest" => {
        "QtCore" => "THIS_REPOSITORY",
    },
    "QtDBus" => {
        "QtCore" => "THIS_REPOSITORY",
        "QtXml" => "THIS_REPOSITORY",
    },
    "QtSql" => {
        "QtCore" => "THIS_REPOSITORY",
    },
    "QtGui" => {
        "QtCore" => "THIS_REPOSITORY",
    },
    "QtUiTools" => {
        "QtCore" => "THIS_REPOSITORY",
        "QtGui" => "THIS_REPOSITORY",
    },
);
