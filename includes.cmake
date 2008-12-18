set(OpenMS_sources  CACHE INTERNAL "This variable should hold all OpenMS sources at the end of the config step" )

include(source/KERNEL/sources.cmake)
include(source/METADATA/sources.cmake)
include(source/ANALYSIS/QUANTITATION/sources.cmake)
include(source/ANALYSIS/SVM/sources.cmake)
include(source/ANALYSIS/MAPMATCHING/sources.cmake)
include(source/ANALYSIS/DECHARGING/sources.cmake)
include(source/ANALYSIS/ID/sources.cmake)
include(source/FILTERING/BASELINE/sources.cmake)
include(source/FILTERING/TRANSFORMERS/sources.cmake)
include(source/FILTERING/DATAREDUCTION/sources.cmake)
include(source/FILTERING/CALIBRATION/sources.cmake)
include(source/FILTERING/SMOOTHING/sources.cmake)
include(source/FILTERING/NOISEESTIMATION/sources.cmake)
include(source/FILTERING/ID/sources.cmake)
include(source/SYSTEM/sources.cmake)
include(source/APPLICATIONS/sources.cmake)
include(source/FORMAT/DB/sources.cmake)
include(source/FORMAT/HANDLERS/sources.cmake)
include(source/FORMAT/VALIDATORS/sources.cmake)
include(source/FORMAT/sources.cmake)
include(source/TRANSFORMATIONS/FEATUREFINDER/sources.cmake)
include(source/TRANSFORMATIONS/RAW2PEAK/sources.cmake)
include(source/MATH/STATISTICS/sources.cmake)
include(source/MATH/MISC/sources.cmake)
include(source/CONCEPT/sources.cmake)
include(source/VISUAL/DIALOGS/sources.cmake)
include(source/VISUAL/VISUALIZER/sources.cmake)
include(source/VISUAL/sources.cmake)
include(source/CHEMISTRY/sources.cmake)
include(source/COMPARISON/CLUSTERING/sources.cmake)
include(source/COMPARISON/SPECTRA/sources.cmake)
include(source/DATASTRUCTURES/sources.cmake)

## uic are "sources" of OpenMS because they add .ui depedencies to the lib
include(include/OpenMS/VISUAL/UIC/sources.cmake)
include(include/OpenMS/VISUAL/DIALOGS/UIC/sources.cmake)


## not part of the actual sources for the lib
include(source/APPLICATIONS/TOPP/sources.cmake)
include(source/EXAMPLES/sources.cmake)
include(source/TEST/sources.cmake)


set(OpenMS_sources_h  CACHE INTERNAL "This variable should hold all OpenMS sources at the end of the config step" )

include (include/OpenMS/ANALYSIS/DECHARGING/sources.cmake)
include (include/OpenMS/ANALYSIS/ID/sources.cmake)
include (include/OpenMS/ANALYSIS/MAPMATCHING/sources.cmake)
include (include/OpenMS/ANALYSIS/QUANTITATION/sources.cmake)
include (include/OpenMS/ANALYSIS/SVM/sources.cmake)
include (include/OpenMS/APPLICATIONS/sources.cmake)
include (include/OpenMS/CHEMISTRY/sources.cmake)
include (include/OpenMS/COMPARISON/CLUSTERING/sources.cmake)
include (include/OpenMS/COMPARISON/SPECTRA/sources.cmake)
include (include/OpenMS/CONCEPT/sources.cmake)
include (include/OpenMS/DATASTRUCTURES/sources.cmake)
include (include/OpenMS/FILTERING/BASELINE/sources.cmake)
include (include/OpenMS/FILTERING/CALIBRATION/sources.cmake)
include (include/OpenMS/FILTERING/DATAREDUCTION/sources.cmake)
include (include/OpenMS/FILTERING/ID/sources.cmake)
include (include/OpenMS/FILTERING/NOISEESTIMATION/sources.cmake)
include (include/OpenMS/FILTERING/SMOOTHING/sources.cmake)
include (include/OpenMS/FILTERING/TRANSFORMERS/sources.cmake)
include (include/OpenMS/FORMAT/sources.cmake)
include (include/OpenMS/FORMAT/DB/sources.cmake)
include (include/OpenMS/FORMAT/HANDLERS/sources.cmake)
include (include/OpenMS/FORMAT/VALIDATORS/sources.cmake)
include (include/OpenMS/KERNEL/sources.cmake)
include (include/OpenMS/MATH/MISC/sources.cmake)
include (include/OpenMS/MATH/MISC/NNLS/sources.cmake)
include (include/OpenMS/MATH/STATISTICS/sources.cmake)
include (include/OpenMS/METADATA/sources.cmake)
include (include/OpenMS/SYSTEM/sources.cmake)
include (include/OpenMS/TRANSFORMATIONS/FEATUREFINDER/sources.cmake)
include (include/OpenMS/TRANSFORMATIONS/RAW2PEAK/sources.cmake)
include (include/OpenMS/VISUAL/sources.cmake)
include (include/OpenMS/VISUAL/DIALOGS/sources.cmake)
include (include/OpenMS/VISUAL/VISUALIZER/sources.cmake)

## merge all headers to sources (for source group view in VS)
#add configured config.h to source group
source_group("Header Files\\OpenMS" FILES ${CONFIGURED_CONFIG_H})
list(APPEND OpenMS_sources ${OpenMS_sources_h} ${CONFIGURED_CONFIG_H})

# TODO track why the duplicate warnings are thrown for all (!) MOC sources
# Macro problem?
list(REMOVE_DUPLICATES OpenMS_sources)
