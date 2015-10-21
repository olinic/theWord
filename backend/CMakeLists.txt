include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set(
    TheWordbackend_SRCS
    modules/TheWord/backend.cpp
    modules/TheWord/mytype.cpp
)

add_library(TheWordbackend MODULE
    ${TheWordbackend_SRCS}
)

set_target_properties(TheWordbackend PROPERTIES
         LIBRARY_OUTPUT_DIRECTORY TheWord)

qt5_use_modules(TheWordbackend Gui Qml Quick)

# Copy qmldir file to build dir for running in QtCreator
add_custom_target(TheWordbackend-qmldir ALL
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/modules/TheWord/qmldir ${CMAKE_CURRENT_BINARY_DIR}/TheWord
    DEPENDS ${QMLFILES}
)

# Install plugin file
install(TARGETS TheWordbackend DESTINATION ${QT_IMPORTS_DIR}/TheWord/)
install(FILES   modules/TheWord/qmldir DESTINATION ${QT_IMPORTS_DIR}/TheWord/)

