vcpkg_from_source()

file(INSTALL 
    "${CMAKE_CURRENT_LIST_DIR}/custom_dijkstra_call.hpp"
    "${CMAKE_CURRENT_LIST_DIR}/yen_ksp.hpp"
    DESTINATION ${CURRENT_PACKAGES_DIR}/include)

vcpkg_configure_cmake(
    SOURCE_PATH ${CMAKE_CURRENT_LIST_DIR}
    PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_copy_pdbs()
