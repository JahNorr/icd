\name{icd10_chapter}
\alias{icd10_chapter}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
ICD-10 Chapters
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Chapter designations classifying and grouping ICD-10 Codes
}
\usage{data("icd10_chapter")}
\format{
  A data frame with 22 observations on the following 4 variables.
  \describe{
    \item{\code{chapter}}{a numeric vector - the chapter number}
    \item{\code{desc}}{a character vector - the name of the chapter (a general description)}
    \item{\code{range_start}}{a character vector - the first code in the chapter}
    \item{\code{range_end}}{a character vector - the last code in the chapter}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
World Health Organization
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(icd10_chapter)
icd_code<-"C45"
icd10_chapters[icd_code>=icd10_chapters$range_start & icd_code<=icd10_chapters$range_end,]
}
\keyword{datasets}
