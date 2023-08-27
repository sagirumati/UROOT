# URooTab: Conduct Unit Root Tests Using EViews Routines

# Sunday: August 27, 2023

<!-- <img src="inst/figures/URooTab.png" align="right" width="120" /> -->

<!-- badges: start -->
<!-- [![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/URooTab)](https://cran.r-project.org/package=URooTab) -->
<!-- [![CRAN_Status_Badge](https://cranlogs.r-pkg.org/badges/grand-total/URooTab?color=49C31B)](https://cranlogs.r-pkg.org/badges/grand-total/URooTab?color=49C31B) -->
<!-- [![](https://cranlogs.r-pkg.org/badges/URooTab?color=49C31B)](https://cranlogs.r-pkg.org/badges/URooTab?color=49C31B) -->
<!-- [![R-CMD-check](https://github.com/sagirumati/URooTab/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/sagirumati/URooTab/actions/workflows/check-standard.yaml) -->
<!-- badges: end -->

# 1 About the Author

The author of this package, **Sagiru Mati**, obtained his PhD in
Economics from the Near East University, North Cyprus. He works at the
Department of Economics, Yusuf Maitama Sule (Northwest) University,
Kano, Nigeria. Please visit his [website](https://smati.com.ng) for more
details.

Please follow his publications on [**ORCID:
0000-0003-1413-3974**](https://orcid.org/0000-0003-1413-3974)

# 2 About URooTab

URooTab is an R package that can run EViews program in R. It also adds
`eviews` as a knit-engine to `knitr` package, so that users can embed
EViews codes in R Markdown and Quarto document.

# 3 Why URooTab?

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

URooTab can be installed using the following commands in R.

    install.packages("URooTab")
    OR
    devtools::install_github("sagirumati/URooTab")

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

Please load the URooTab package as follows:

    ```{r}                                                                .
    library(URooTab)
    ```

# 7 Ways to use URooTab

The package can work with base R, R Markdown or Quarto document.

## 7.1 URooTab along with R Markdown or Quarto document

After loading the package, a chunk for Eviews can be created by
supplying `eviews` as the engine name in R Markdown or Quarto document
as shown below :

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 7.1: All test</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 9%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Variables</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">Decision</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">X</td>
<td style="text-align: left;">-9.963***</td>
<td style="text-align: left;">-10.205***</td>
<td style="text-align: left;">-10.226***</td>
<td style="text-align: left;">-11.451***</td>
<td style="text-align: left;">-11.386***</td>
<td style="text-align: left;">-11.339***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">1.161</td>
<td style="text-align: left;">-0.154</td>
<td style="text-align: left;">-1.322</td>
<td style="text-align: left;">-9.831***</td>
<td style="text-align: left;">-10.087***</td>
<td style="text-align: left;">-10.091***</td>
<td style="text-align: left;">I(1)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 7.1: All test

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 7.1: All test</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 9%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Variables</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">Decision</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">X</td>
<td style="text-align: left;">-9.964***</td>
<td style="text-align: left;">-10.208***</td>
<td style="text-align: left;">-10.225***</td>
<td style="text-align: left;">-49.670***</td>
<td style="text-align: left;">-49.345***</td>
<td style="text-align: left;">-52.120***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">1.193</td>
<td style="text-align: left;">-0.108</td>
<td style="text-align: left;">-1.293</td>
<td style="text-align: left;">-9.836***</td>
<td style="text-align: left;">-10.089***</td>
<td style="text-align: left;">-10.094***</td>
<td style="text-align: left;">I(1)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 7.1: All test

<table style="width:100%;">
<caption><span id="tab:adf"></span>Table 7.2: ADF test</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 9%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Variables</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">Decision</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">X</td>
<td style="text-align: left;">-9.963***</td>
<td style="text-align: left;">-10.205***</td>
<td style="text-align: left;">-10.226***</td>
<td style="text-align: left;">-11.451***</td>
<td style="text-align: left;">-11.386***</td>
<td style="text-align: left;">-11.339***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">1.161</td>
<td style="text-align: left;">-0.154</td>
<td style="text-align: left;">-1.322</td>
<td style="text-align: left;">-9.831***</td>
<td style="text-align: left;">-10.087***</td>
<td style="text-align: left;">-10.091***</td>
<td style="text-align: left;">I(1)</td>
</tr>
</tbody>
</table>

<span id="tab:adf"></span>Table 7.2: ADF test

<table style="width:100%;">
<caption><span id="tab:pp"></span>Table 7.3: PP test</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 19%" />
<col style="width: 9%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Variables</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">None</th>
<th style="text-align: left;">Constant</th>
<th style="text-align: left;">Constant and trend</th>
<th style="text-align: left;">Decision</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">X</td>
<td style="text-align: left;">-9.964***</td>
<td style="text-align: left;">-10.208***</td>
<td style="text-align: left;">-10.225***</td>
<td style="text-align: left;">-49.670***</td>
<td style="text-align: left;">-49.345***</td>
<td style="text-align: left;">-52.120***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">1.193</td>
<td style="text-align: left;">-0.108</td>
<td style="text-align: left;">-1.293</td>
<td style="text-align: left;">-9.836***</td>
<td style="text-align: left;">-10.089***</td>
<td style="text-align: left;">-10.094***</td>
<td style="text-align: left;">I(1)</td>
</tr>
</tbody>
</table>

<span id="tab:pp"></span>Table 7.3: PP test
