% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sjTabSPSS.R
\name{view_spss}
\alias{view_spss}
\title{View SPSS data set structure}
\usage{
view_spss(df, file = NULL, alternateRowColors = TRUE, showID = TRUE,
  showType = FALSE, showValues = TRUE, showValueLabels = TRUE,
  showFreq = FALSE, showPerc = FALSE, sortByName = FALSE,
  breakVariableNamesAt = 50, encoding = NULL, hideProgressBar = FALSE,
  CSS = NULL, useViewer = TRUE, no.output = FALSE, remove.spaces = TRUE)
}
\arguments{
\item{df}{An imported data frame, imported by \code{\link[sjmisc]{read_spss}} function.}

\item{file}{The destination file, which will be in html-format. If no filepath is specified,
the file will be saved as temporary file and openend either in the IDE's viewer pane or
in the default web browser.}

\item{alternateRowColors}{If \code{TRUE}, alternating rows are highlighted with a light gray
background color.}

\item{showID}{If \code{TRUE} (default), the variable ID is shown in the first column.}

\item{showType}{If \code{TRUE}, the variable type is shown in a separate column. Since
SPSS variable types are mostly \code{\link{numeric}} after import, this column
is hidden by default.}

\item{showValues}{If \code{TRUE} (default), the variable values are shown as additional column.}

\item{showValueLabels}{If \code{TRUE} (default), the value labels are shown as additional column.}

\item{showFreq}{If \code{TRUE}, an additional column with frequencies for each variable is shown.}

\item{showPerc}{If \code{TRUE}, an additional column with percentage of frequencies for each variable is shown.}

\item{sortByName}{If \code{TRUE}, rows are sorted according to the variable
names. By default, rows (variables) are ordered according to their
order in the data frame.}

\item{breakVariableNamesAt}{Wordwrap for lomg variable names. Determines how many chars of
a variable name are displayed in one line and when a line break is inserted.
Default value is 50, use \code{NULL} to turn off word wrap.}

\item{encoding}{The charset encoding used for variable and value labels. Default is \code{NULL}, so encoding
will be auto-detected depending on your platform (\code{"UTF-8"} for Unix and \code{"Windows-1252"} for
Windows OS). Change encoding if specific chars are not properly displayed (e.g.) German umlauts).}

\item{hideProgressBar}{If \code{TRUE}, the progress bar that is displayed when creating the
table is hidden. Default in \code{FALSE}, hence the bar is visible.}

\item{CSS}{A \code{\link{list}} with user-defined style-sheet-definitions, according to the
\href{http://www.w3.org/Style/CSS/}{official CSS syntax}. See return value \code{page.style} for details
of all style-sheet-classnames that are used in this function. Parameters for this list need:
\enumerate{
  \item the class-names with \code{"css."}-prefix as parameter name and
  \item each style-definition must end with a semicolon
}
You can add style information to the default styles by using a + (plus-sign) as
initial character for the parameter attributes. Examples:
\itemize{
  \item \code{css.table='border:2px solid red;'} for a solid 2-pixel table border in red.
  \item \code{css.summary='font-weight:bold;'} for a bold fontweight in the summary row.
  \item \code{css.arc='color:blue;'} for a blue text color each 2nd row.
  \item \code{css.summary='+color:blue;'} to add blue font color style to the summary row.
}
See further examples below and \href{http://www.strengejacke.de/sjPlot/sjtbasics}{sjPlot manual: sjt-basics}.}

\item{useViewer}{If \code{TRUE}, the function tries to show the HTML table in the IDE's viewer pane. If
\code{FALSE} or no viewer available, the HTML table is opened in a web browser.}

\item{no.output}{If \code{TRUE}, the html-output is neither opened in a browser nor shown in
the viewer pane and not even saved to file. This option is useful when the html output
should be used in \code{knitr} documents. The html output can be accessed via the return
value.}

\item{remove.spaces}{logical, if \code{TRUE}, leading spaces are removed from all lines in the final string
that contains the html-data. Use this, if you want to remove parantheses for html-tags. The html-source
may look less pretty, but it may help when exporting html-tables to office tools.}
}
\value{
Invisibly returns
         \itemize{
           \item the web page style sheet (\code{page.style}),
           \item the web page content (\code{page.content}),
           \item the complete html-output (\code{output.complete}) and
           \item the html-table with inline-css for use with knitr (\code{knitr})
           }
           for further use.
}
\description{
Save (or show) content of an imported SPSS data file as HTML table.
               Similar to the SPSS variable view. This quick overview shows
               variable ID numner, name, label, type and associated
               value labels. The result can be considered as "codeplan" of
               the data frame.
}
\examples{
\dontrun{
# init dataset
library(sjmisc)
data(efc)

# view variables
view_spss(efc)

# view variables w/o values and value labels
view_spss(efc, showValues=FALSE, showValueLabels=FALSE)

# view variables including variable typed, orderd by name
view_spss(efc, sortByName=TRUE, showType=TRUE)

# ----------------------------------------------------------------
# User defined style sheet
# ----------------------------------------------------------------
view_spss(efc,
          CSS=list(css.table = "border: 2px solid;",
                   css.tdata = "border: 1px solid;",
                   css.arc = "color:blue;"))}
}
\seealso{
\itemize{
           \item \href{http://www.strengejacke.de/sjPlot/datainit/}{sjPlot manual: data initialization}
           \item \href{http://www.strengejacke.de/sjPlot/view_spss/}{sjPlot manual: inspecting (SPSS imported) data frames}
         }
}

