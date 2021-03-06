\name{acc_ras2fric}
\alias{acc_ras2fric}
\title{acc_ras2fric}
\usage{
  acc_ras2fric(
  my_input,
  my_baselayer,
  resampling_method="max",
  my_reclass_inputvalues = NULL,
  my_reclass_outputvalues = NULL,
  my_datatype = "UInt16"
  )
}
\description{
  This function converts raster data into a raster layer containing travel speeds that can be used to create a friction map.
}
\arguments{
\item{my_input}{An input layer for the conversion. Should be of type raster(raster)}
\item{my_baselayer}{A baselayer that defines resolution, extent and projection system of the friction map. Should be of class raster(raster). Most commonly a layer containing land-use values. Can be the same layer as the input layer}
\item{resampling_method}{Defines the method used to resample the raster values into lower resolutions. Defaults to maximum. Other options contain ("near"|"bilinear"|"cubic"|"cubicspline"|"lanczos"|"average"|"mode"|"max"|"min"|"med"|"q1"|"q3", see GDAL documentation for more information.}
\item{my_reclass_inputvalues}{A vector with all unique  values from the input raster that should be reclassified into travel speeds}
\item{my_reclass_outputvalues}{A vector with all travelspeeds for reclassification. Should be of the same length and in the corresponding order to reclassify values in  my_reclass_inputvalues}
\item{my_datatype}{GeoTiff datatype for temporary storage of data. Defaults to UInt16 storing integer values. For details see GDAL documentation.}
}

\examples{
  acc_ras2fric()
}
