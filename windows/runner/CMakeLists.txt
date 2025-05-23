cmake_minimum_required(VERSION 3.14)
project(runner LANGUAGES CXX)

add_executable(${BINARY_NAME} WIN32
  "flutter_window.cpp"
  "main.cpp"
  "utils.cpp"
  "win32_window.cpp"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
  "Runner.rc"
  "runner.exe.manifest"
)

# Configuration spécifique MSVC avant apply_standard_settings
if(MSVC)
    # Options de compilation avancées
    target_compile_options(${BINARY_NAME} PRIVATE
        /Zc:inline-
        /Zc:twoPhase-
        /Zc:__cplusplus
        /std:c++17
        /permissive-
        /bigobj
    )
    
    # Options de lien
    target_link_options(${BINARY_NAME} PRIVATE
        /DEBUG:FULL
        /IGNORE:4099
        /OPT:REF
        /OPT:ICF
    )
endif()

apply_standard_settings(${BINARY_NAME})

# Définitions de version
target_compile_definitions(${BINARY_NAME} PRIVATE 
    "FLUTTER_VERSION=\"${FLUTTER_VERSION}\""
    "FLUTTER_VERSION_MAJOR=${FLUTTER_VERSION_MAJOR}"
    "FLUTTER_VERSION_MINOR=${FLUTTER_VERSION_MINOR}"
    "FLUTTER_VERSION_PATCH=${FLUTTER_VERSION_PATCH}"
    "FLUTTER_VERSION_BUILD=${FLUTTER_VERSION_BUILD}"
    "NOMINMAX"
    "WIN32_LEAN_AND_MEAN"
)

# Configuration des dépendances
target_link_libraries(${BINARY_NAME} PRIVATE 
    flutter
    flutter_wrapper_app
    "dwmapi.lib"
    "Shcore.lib"
    "Ole32.lib"
)

target_include_directories(${BINARY_NAME} PRIVATE 
    "${CMAKE_SOURCE_DIR}"
    "${FLUTTER_MANAGED_DIR}"
)

add_dependencies(${BINARY_NAME} flutter_assemble)

# Configuration spécifique pour les builds Release
if(NOT CMAKE_BUILD_TYPE STREQUAL "Debug")
    target_compile_definitions(${BINARY_NAME} PRIVATE "NDEBUG")
    set_target_properties(${BINARY_NAME} PROPERTIES
        MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>"
    )
endif()