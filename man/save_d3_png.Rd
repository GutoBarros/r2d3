% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/publish.R
\name{save_d3_png}
\alias{save_d3_png}
\title{Save a D3 visualization as a PNG image}
\usage{
save_d3_png(
  d3,
  file,
  background = "white",
  width = 992,
  height = 744,
  delay = 0.2,
  zoom = 1
)
}
\arguments{
\item{d3}{D3 visualization to save}

\item{file}{File to save HTML into}

\item{background}{Text string giving the html background color of the widget.
Defaults to white.}

\item{width}{Image width}

\item{height}{Image height}

\item{delay}{Time to wait before taking screenshot, in seconds. Sometimes a
longer delay is needed for all assets to display properly.}

\item{zoom}{A number specifying the zoom factor. A zoom factor of 2 will
result in twice as many pixels vertically and horizontally. Note that
using 2 is not exactly the same as taking a screenshot on a HiDPI (Retina)
device: it is like increasing the zoom to 200 doubling the height and
width of the browser window. This differs from using a HiDPI device
because some web pages load different, higher-resolution images when they
know they will be displayed on a HiDPI device (but using zoom will not
report that there is a HiDPI device).}
}
\description{
Save a D3 visualization to PNG (e.g. for including in another document).
}
\details{
PNG versions of D3 visualizations are created by displaying them in
an offscreen web browser and taking a screenshot of the rendered web page.

Using the \code{save_d3_png()} function requires that you install the
\pkg{webshot} package, as well as the phantom.js headless browser (which
you can install using the function \code{webshot::install_phantomjs()}).
}
\seealso{
\code{\link[=save_d3_html]{save_d3_html()}}
}
