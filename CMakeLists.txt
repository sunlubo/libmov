cmake_minimum_required(VERSION 3.13.0)

project(libmov C CXX)

set(CMAKE_C_STANDARD 99)

add_library(mov
  src/fmp4-reader.c
  src/fmp4-writer.c
  src/mov-av1.c
  src/mov-avc1.c
  src/mov-dinf.c
  src/mov-elst.c
  src/mov-esds.c
  src/mov-ftyp.c
  src/mov-hdlr.c
  src/mov-hdr.c
  src/mov-hvcc.c
  src/mov-iods.c
  src/mov-leva.c
  src/mov-mdhd.c
  src/mov-mehd.c
  src/mov-mfhd.c
  src/mov-minf.c
  src/mov-mvhd.c
  src/mov-opus.c
  src/mov-reader.c
  src/mov-sidx.c
  src/mov-stco.c
  src/mov-stsc.c
  src/mov-stsd.c
  src/mov-stss.c
  src/mov-stsz.c
  src/mov-stts.c
  src/mov-tag.c
  src/mov-tfdt.c
  src/mov-tfhd.c
  src/mov-tfra.c
  src/mov-tkhd.c
  src/mov-track.c
  src/mov-trex.c
  src/mov-trun.c
  src/mov-tx3g.c
  src/mov-udta.c
  src/mov-vpcc.c
  src/mov-writer.c
  src/mov-file-buffer.c
)

target_include_directories(mov
  PRIVATE include
  PRIVATE ${PROJECT_SOURCE_DIR}/include
)

install(DIRECTORY include/ DESTINATION include/libmov)
install(TARGETS mov DESTINATION lib)
