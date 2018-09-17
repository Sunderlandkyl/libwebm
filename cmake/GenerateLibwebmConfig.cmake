# Generate the libwebmConfig.cmake file in the build tree.  Also configure
# one for installation.  The file tells external projects how to use
# OpenIGTLink.

#-----------------------------------------------------------------------------
# Settings specific to the build tree.

# The "use" file.
SET(LIBWEBM_USE_FILE ${LIBWEBM_BINARY_DIR}/UseLibwebm.cmake)

# Library directory.
SET(LIBWEBM_LIBRARY_DIRS_CONFIG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})

#-----------------------------------------------------------------------------
# Configure OpenIGTLinkConfig.cmake for the build tree.
CONFIGURE_FILE(${LIBWEBM_SOURCE_DIR}/libwebmConfig.cmake.in
               ${LIBWEBM_BINARY_DIR}/libwebmConfig.cmake @ONLY IMMEDIATE)

#-----------------------------------------------------------------------------
# Settings specific to the install tree.

## store old OpenIGTLink_LIBRARY_TARGETS_FILE
#SET(OpenIGTLink_LIBRARY_TARGETS_FILE_BUILDTREE ${OpenIGTLink_LIBRARY_TARGETS_FILE})

# The library dependencies file.
SET(LIBWEBM_LIBRARY_TARGETS_FILE ${LIBWEBM_BINARY_DIR}/libwebmTargets.cmake)

# The "use" file.
SET(LIBWEBM_USE_FILE ${LIBWEBM_BINARY_DIR}/UseLibwebm.cmake)

# Include directories.
#SET(OpenIGTLink_INCLUDE_DIRS_CONFIG \${OpenIGTLink_INSTALL_PREFIX}/${OpenIGTLink_INSTALL_INCLUDE_DIR})
#FOREACH(DIR ${OpenIGTLink_INCLUDE_RELATIVE_DIRS})
#  LIST(APPEND OpenIGTLink_INCLUDE_DIRS_CONFIG \${OpenIGTLink_INSTALL_PREFIX}/${OpenIGTLink_INSTALL_INCLUDE_DIR}/${DIR})
#ENDFOREACH(DIR)
#IF(OpenIGTLink_INCLUDE_DIRS_SYSTEM)
#  LIST(APPEND OpenIGTLink_INCLUDE_DIRS_CONFIG ${OpenIGTLink_INCLUDE_DIRS_SYSTEM})
#ENDIF(OpenIGTLink_INCLUDE_DIRS_SYSTEM)

# Link directories.
SET(LIBWEBM_LIBRARY_DIRS_CONFIG "\${LIBWEBM_INSTALL_PREFIX}/${LIBWEBM_INSTALL_LIB_DIR}")

# Determine the include directories needed.
SET(LIBWEBM_INCLUDE_DIRS_CONFIG
  ${LIBWEBM_INCLUDE_DIRS}
  )

#-----------------------------------------------------------------------------
# Configure libwebmConfig.cmake for the install tree.

# Construct the proper number of GET_FILENAME_COMPONENT(... PATH)
# calls to compute the installation prefix.
#STRING(REGEX REPLACE "/" ";" OpenIGTLink_INSTALL_PACKAGE_DIR_COUNT
  #"${OpenIGTLink_INSTALL_PACKAGE_DIR}")
#SET(OpenIGTLink_CONFIG_CODE "
# Compute the installation prefix from this OpenIGTLinkConfig.cmake file location.
#GET_FILENAME_COMPONENT(OpenIGTLink_INSTALL_PREFIX \"\${CMAKE_CURRENT_LIST_FILE}\" PATH)")
#FOREACH(p ${OpenIGTLink_INSTALL_PACKAGE_DIR_COUNT})
  #SET(OpenIGTLink_CONFIG_CODE
    #"${OpenIGTLink_CONFIG_CODE}\nGET_FILENAME_COMPONENT(OpenIGTLink_INSTALL_PREFIX \"\${OpenIGTLink_INSTALL_PREFIX}\" PATH)"
    #)
#ENDFOREACH(p)


CONFIGURE_FILE(${LIBWEBM_SOURCE_DIR}/libwebmConfig.cmake.in
               ${LIBWEBM_BINARY_DIR}/libwebmConfig.cmake @ONLY IMMEDIATE)

## restore old OpenIGTLink_LIBRARY_TARGETS_FILE
#SET(OpenIGTLink_LIBRARY_TARGETS_FILE ${OpenIGTLink_LIBRARY_TARGETS_FILE_BUILDTREE})

