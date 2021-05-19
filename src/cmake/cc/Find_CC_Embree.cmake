# This sets the following variables:
# embree target

if(EMBREE_INSTALL_ROOT)
	message(STATUS "Specified EMBREE_INSTALL_ROOT : ${EMBREE_INSTALL_ROOT}")
	set(embree_INCLUDE_ROOT ${EMBREE_INSTALL_ROOT}/include/)
	set(embree_LIB_ROOT ${EMBREE_INSTALL_ROOT}/lib/)
	__search_target_components(embree
							   INC embree3/rtcore.h
							   DLIB embree
							   LIB embree
							   )
else()
endif()

__test_import(embree dll)