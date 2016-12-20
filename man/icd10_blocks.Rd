\name{icd10_blocks}
\alias{icd10_blocks}
\docType{data}
\title{
Blocks of ICD-10 codes with related conditions
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Block designations further classifying and grouping ICD-10 Codes below the chapter level
}
\usage{data("icd10_blocks")}
\format{
  A data frame with 292 observations on the following 6 variables.
  \describe{
    \item{\code{block}}{a numeric vector - a unique number id'ing the block}
    \item{\code{chapter}}{a numeric vector- the chapter number containing this block}
    \item{\code{desc}}{a character vector - description of the ICD-10 codes grouped in this block}
    \item{\code{range_start}}{a character vector - the first code in the block}
    \item{\code{range_end}}{a character vector - the last code in the block}
    \item{\code{level}}{a numeric vector - there are several levels of blocks}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(icd10_blocks)

}
\keyword{datasets}
