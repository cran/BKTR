% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kernels.R
\name{KernelAddComposed}
\alias{KernelAddComposed}
\title{R6 class for Kernels Composed via Addition}
\description{
R6 class automatically generated when
adding two kernels together.
}
\examples{
\dontshow{if (torch::torch_is_installed()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Create a new additive kernel
k_rq_plus_per <- KernelAddComposed$new(
  left_kernel = KernelRQ$new(),
  right_kernel = KernelPeriodic$new(),
  new_name = 'SE + Periodic Kernel'
)
# Set the kernel's positions
positions_df <- data.frame(x=c(-4, 0, 3), y=c(-2, 0, 2))
k_rq_plus_per$set_positions(positions_df)
# Generate the kernel's covariance matrix
k_rq_plus_per$kernel_gen()
\dontshow{\}) # examplesIf}
}
\section{Super classes}{
\code{\link[BKTR:Kernel]{BKTR::Kernel}} -> \code{\link[BKTR:KernelComposed]{BKTR::KernelComposed}} -> \code{KernelAddComposed}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-KernelAddComposed-new}{\code{KernelAddComposed$new()}}
\item \href{#method-KernelAddComposed-clone}{\code{KernelAddComposed$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="BKTR" data-topic="Kernel" data-id="add_jitter_to_kernel"><a href='../../BKTR/html/Kernel.html#method-Kernel-add_jitter_to_kernel'><code>BKTR::Kernel$add_jitter_to_kernel()</code></a></span></li>
<li><span class="pkg-link" data-pkg="BKTR" data-topic="Kernel" data-id="kernel_gen"><a href='../../BKTR/html/Kernel.html#method-Kernel-kernel_gen'><code>BKTR::Kernel$kernel_gen()</code></a></span></li>
<li><span class="pkg-link" data-pkg="BKTR" data-topic="Kernel" data-id="plot"><a href='../../BKTR/html/Kernel.html#method-Kernel-plot'><code>BKTR::Kernel$plot()</code></a></span></li>
<li><span class="pkg-link" data-pkg="BKTR" data-topic="KernelComposed" data-id="core_kernel_fn"><a href='../../BKTR/html/KernelComposed.html#method-KernelComposed-core_kernel_fn'><code>BKTR::KernelComposed$core_kernel_fn()</code></a></span></li>
<li><span class="pkg-link" data-pkg="BKTR" data-topic="KernelComposed" data-id="set_positions"><a href='../../BKTR/html/KernelComposed.html#method-KernelComposed-set_positions'><code>BKTR::KernelComposed$set_positions()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-KernelAddComposed-new"></a>}}
\if{latex}{\out{\hypertarget{method-KernelAddComposed-new}{}}}
\subsection{Method \code{new()}}{
Create a new \code{KernelAddComposed} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{KernelAddComposed$new(left_kernel, right_kernel, new_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{left_kernel}}{Kernel: The left kernel to use for composition}

\item{\code{right_kernel}}{Kernel: The right kernel to use for composition}

\item{\code{new_name}}{String: The name of the composed kernel}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{KernelAddComposed} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-KernelAddComposed-clone"></a>}}
\if{latex}{\out{\hypertarget{method-KernelAddComposed-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{KernelAddComposed$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
