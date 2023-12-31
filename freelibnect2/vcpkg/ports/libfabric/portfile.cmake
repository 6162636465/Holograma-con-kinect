vcpkg_check_linkage(ONLY_DYNAMIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ofiwg/libfabric
    REF bcb41c462e1e38559c94096ac06e2f578b466882 # v1.13.2
    HEAD_REF master
    SHA512 b3ea464a402aa5b470ba5478350e23682488f785a3b2cb34df02f23d1663f097285f6795ab287db40b2a544c8e3969358a23165664e1fc39542038d726212e6c
    PATCHES
        add_additional_includes.patch
)

set(LIBFABRIC_RELEASE_CONFIGURATION "Release-v142")
set(LIBFABRIC_DEBUG_CONFIGURATION "Debug-v142")

vcpkg_msbuild_install(
    SOURCE_PATH "${SOURCE_PATH}"
    PROJECT_SUBPATH libfabric.vcxproj
    PLATFORM "x64"
    RELEASE_CONFIGURATION ${LIBFABRIC_RELEASE_CONFIGURATION}
    DEBUG_CONFIGURATION ${LIBFABRIC_DEBUG_CONFIGURATION}
    OPTIONS
      /p:SolutionDir=${SOURCE_PATH}
)

file(COPY "${SOURCE_PATH}/include/" DESTINATION "${CURRENT_PACKAGES_DIR}/include/libfabric")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYING")
