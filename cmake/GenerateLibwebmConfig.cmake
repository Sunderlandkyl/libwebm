# Generate the libwebmConfig.cmake file in the build tree.  Also configure
# one for installation.  The file tells external projects how to use
# libwebm.

#-----------------------------------------------------------------------------
# Settings specific to the build tree.

# Library directory.
SET(LIBWEBM_LIBRARY_DIRS_CONFIG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})

#-----------------------------------------------------------------------------
# Configure libwebmConfig.cmake for the build tree.
CONFIGURE_FILE(${LIBWEBM_SOURCE_DIR}/libwebmConfig.cmake.in
               ${LIBWEBM_BINARY_DIR}/libwebmConfig.cmake @ONLY IMMEDIATE)

#-----------------------------------------------------------------------------

# The library dependencies file.
SET(LIBWEBM_LIBRARY_TARGETS_FILE ${LIBWEBM_BINARY_DIR}/libwebmTargets.cmake)

# Link directories.
SET(LIBWEBM_LIBRARY_DIRS_CONFIG "\${LIBWEBM_INSTALL_PREFIX}/${LIBWEBM_INSTALL_LIB_DIR}")

# Determine the include directories needed.
SET(LIBWEBM_INCLUDE_DIRS_CONFIG ${LIBWEBM_INCLUDE_DIRS})

CONFIGURE_FILE(${LIBWEBM_SOURCE_DIR}/libwebmConfig.cmake.in
               ${LIBWEBM_BINARY_DIR}/libwebmConfig.cmake @ONLY IMMEDIATE)
