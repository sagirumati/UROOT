# UROOT: A Seamless Integration of EViews and R

# Friday: August 25, 2023

<!-- <img src="inst/figures/UROOT.png" align="right" width="120" /> -->

<!-- badges: start -->

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/UROOT)](https://cran.r-project.org/package=UROOT)
[![CRAN\_Status\_Badge](https://cranlogs.r-pkg.org/badges/grand-total/UROOT?color=49C31B)](https://cranlogs.r-pkg.org/badges/grand-total/UROOT?color=49C31B)
[![](https://cranlogs.r-pkg.org/badges/UROOT?color=49C31B)](https://cranlogs.r-pkg.org/badges/UROOT?color=49C31B)
[![R-CMD-check](https://github.com/sagirumati/UROOT/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/sagirumati/UROOT/actions/workflows/check-standard.yaml)
<!-- badges: end -->

# 1 About the Author

The author of this package, **Sagiru Mati**, obtained his PhD in
Economics from the Near East University, North Cyprus. He works at the
Department of Economics, Yusuf Maitama Sule (Northwest) University,
Kano, Nigeria. Please visit his [website](https://smati.com.ng) for more
details.

Please follow his publications on [**ORCID:
0000-0003-1413-3974**](https://orcid.org/0000-0003-1413-3974)

# 2 About UROOT

UROOT is an R package that can run EViews program in R. It also adds
`eviews` as a knit-engine to `knitr` package, so that users can embed
EViews codes in R Markdown and Quarto document.

# 3 Why UROOT?

While the ecosystem of R is great, it cannot run EViews codes, not talk
of handling EViews objects dynamically and reproducibly. Even though,
EViews can communicate with R, users still need to switch to
type-setting application to embed the EViews outputs. Specifically:

-   I wish I could embed EViews codes in R Markdown or Quarto document

-   I wish I could dynamically import the EViews outputs (graphs,
    tables, equation and series) individually or at once into R, R
    Markdown or Quarto document without switching between these
    applications back and forth.

-   I wish I could use an R function in R, R Markdown or Quarto to:

    -   graph EViews series objects.

    -   graph an R dataframe using EViews.

    -   import data from external sources such as `csv`, `xlsx` as a new
        EViews workfile or into an existing workfile.

    -   create an EViews workfile from an R dataframe

    -   save an EViews workfile page as a workfile or another file
        format.

    -   execute EViews codes.

    -   export an R dataframe as a new EViews workfile or to an existing
        EViews workfile.

    -   save an EViews workfile as a workfile or another file format.

    -   import EViews table object as `kable`.

    -   import EViews series objects as a dataframe or `xts` object

    -   import equation data members such as coefficients, standard
        errors, *R*<sup>2</sup> and so on.

    -   import EViews graph objects

    -   import equation data members, graph, series and table objects
        all at once.

    -   simulate a random walk process using EViews.

-   I wish I could do all of the above without opening the EViews!!!

# 4 Installation

UROOT can be installed using the following commands in R.

    install.packages("UROOT")
    OR
    devtools::install_github("sagirumati/UROOT")

# 5 Setup

To run the package successfully, you need to do one of the following

-   Don’t do anything if the name of EViews executable is one of the
    following: `EViews13_x64`, `EViews13_x86`, `EViews12_x64`,
    `EViews12_x86`, `EViews11_x64`, `EViews11_x86`, `EViews10_x64`,
    `EViews10_x86`, `EViews9_x64`, `EViews9_x86`, `EViews10`. The
    package will find the executable automatically.

-   Rename the Eviews executable to `eviews` or one of the names above.

-   Alternatively, you can use `set_eviews_path()` function to set the
    path the EViews executable as follows:

<!-- -->

    set_eviews_path("C:/Program Files (x86)/EViews 10/EViews10.exe")

# 6 Usage

Please load the UROOT package as follows:

    ```{r}                                                                .
    library(UROOT)
    ```

# 7 Ways to use UROOT

The package can work with base R, R Markdown or Quarto document.

## 7.1 UROOT along with R Markdown or Quarto document

After loading the package, a chunk for Eviews can be created by
supplying `eviews` as the engine name in R Markdown or Quarto document
as shown below :

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 6%" />
<col style="width: 9%" />
<col style="width: 20%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 20%" />
<col style="width: 9%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Variables</th>
<th style="text-align: right;">None</th>
<th style="text-align: right;">Constant</th>
<th style="text-align: right;">Constant and trend</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">Decision</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">X</td>
<td style="text-align: right;">2.166</td>
<td style="text-align: right;">0.271</td>
<td style="text-align: right;">-1.597</td>
<td style="text-align: left;">-1.372***</td>
<td style="text-align: left;">-10.155***</td>
<td style="text-align: left;">-10.115***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: right;">2.283</td>
<td style="text-align: right;">0.143</td>
<td style="text-align: right;">-4.154</td>
<td style="text-align: left;">-0.811***</td>
<td style="text-align: left;">-12.917***</td>
<td style="text-align: left;">-12.855***</td>
<td style="text-align: left;">I(1)</td>
</tr>
</tbody>
</table>
