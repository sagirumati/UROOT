# URooTab: URooTab: Tabular Reporting of ‘EViews’ Unit Root Tests

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

Please follow his publications on:

[**Google
Scholar**](https://scholar.google.com/citations?user=odEp1eIAAAAJ&hl=en&oi=ao)

[**ResearchGate**](https://www.researchgate.net/profile/Sagiru-Mati-2)

[**Web of
Science**](https://www.webofscience.com/wos/author/record/P-3408-2017)

[**ORCID: 0000-0003-1413-3974**](https://orcid.org/0000-0003-1413-3974)

# 2 About URooTab

URooTab is an R package that can conduct EViews unit root tests and
report them in tabular form.

# 3 Why URooTab?

While there are R packages and EViews add-ins available for presenting
unit root tests in tabular form, none of them incorporates **EViews**
procedures within the R environment. Specifically:

-   I wish I could conduct unit root using EViews routines in R Markdown
    or Quarto document

-   I wish I could dynamically import the results of the unit root tests
    individually or at once into R, R Markdown or Quarto document
    without switching between these applications back and forth.

-   I wish I could use an R function to report unit root test in a table
    style suitable for publication.

-   I wish I could do all of the above from R, R Markdown or Quarto
    without opening the EViews!!!

# 4 Installation

URooTab can be installed using the following commands in R.

    install.packages("URooTab")
    OR
    devtools::install_github("sagirumati/URooTab")

# 5 Setup

To run the package successfully, you need to do one of the following

-   Add EViews installation folder to path (**Environment Variables**).

-   Don’t do anything if the name of EViews executable is one of the
    following: `EViews13_x64`, `EViews13_x86`, `EViews12_x64`,
    `EViews12_x86`, `EViews11_x64`, `EViews11_x86`, `EViews10_x64`,
    `EViews10_x86`, `EViews9_x64`, `EViews9_x86`, `EViews10`. The
    package will find the executable automatically.

-   Rename the Eviews executable to `eviews` or one of the names above.

-   Alternatively, you can use `set_eviews_path()` function to set the
    path the EViews executable as follows:

<!-- -->

    library(EviewR)
    set_eviews_path("C:/Program Files (x86)/EViews 10/EViews10.exe")

# 6 Usage

Please load the URooTab package as follows:

    ```{r}                                                                .
    library(URooTab)
    ```

# 7 Ways to use URooTab

The package can work with base R, R Markdown or Quarto document.

## 7.1 URooTab along with R Markdown or Quarto document

You can use `URooTab` in an R chunk in R Markdown or Quarto document

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 7.1: Unit Root Tests for x,
y and Z</caption>
<colgroup>
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 8%" />
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
<td style="text-align: left;">-10.875***</td>
<td style="text-align: left;">-10.889***</td>
<td style="text-align: left;">-10.831***</td>
<td style="text-align: left;">-9.121***</td>
<td style="text-align: left;">-9.070***</td>
<td style="text-align: left;">-9.023***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-0.263</td>
<td style="text-align: left;">-2.058</td>
<td style="text-align: left;">-2.398</td>
<td style="text-align: left;">-10.857***</td>
<td style="text-align: left;">-10.861***</td>
<td style="text-align: left;">-10.804***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">1.492</td>
<td style="text-align: left;">0.989</td>
<td style="text-align: left;">-1.021</td>
<td style="text-align: left;">-0.273</td>
<td style="text-align: left;">-1.993</td>
<td style="text-align: left;">-2.353</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 7.1: Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 7.1: Unit Root Tests for x,
y and Z</caption>
<colgroup>
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 8%" />
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
<td style="text-align: left;">-10.957***</td>
<td style="text-align: left;">-10.992***</td>
<td style="text-align: left;">-10.930***</td>
<td style="text-align: left;">-59.942***</td>
<td style="text-align: left;">-59.785***</td>
<td style="text-align: left;">-60.288***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-0.065</td>
<td style="text-align: left;">-1.963</td>
<td style="text-align: left;">-2.353</td>
<td style="text-align: left;">-10.948***</td>
<td style="text-align: left;">-10.972***</td>
<td style="text-align: left;">-10.912***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">6.649</td>
<td style="text-align: left;">2.247</td>
<td style="text-align: left;">-0.530</td>
<td style="text-align: left;">-0.110</td>
<td style="text-align: left;">-1.888</td>
<td style="text-align: left;">-2.301</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 7.1: Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:adf"></span>Table 7.2: ADF Unit Root Tests for x,
y and Z</caption>
<colgroup>
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 8%" />
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
<td style="text-align: left;">-10.875***</td>
<td style="text-align: left;">-10.889***</td>
<td style="text-align: left;">-10.831***</td>
<td style="text-align: left;">-9.121***</td>
<td style="text-align: left;">-9.070***</td>
<td style="text-align: left;">-9.023***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-0.263</td>
<td style="text-align: left;">-2.058</td>
<td style="text-align: left;">-2.398</td>
<td style="text-align: left;">-10.857***</td>
<td style="text-align: left;">-10.861***</td>
<td style="text-align: left;">-10.804***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">1.492</td>
<td style="text-align: left;">0.989</td>
<td style="text-align: left;">-1.021</td>
<td style="text-align: left;">-0.273</td>
<td style="text-align: left;">-1.993</td>
<td style="text-align: left;">-2.353</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:adf"></span>Table 7.2: ADF Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:pp"></span>Table 7.3: PP Unit Root Tests for x, y
and Z</caption>
<colgroup>
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 18%" />
<col style="width: 8%" />
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
<td style="text-align: left;">-10.957***</td>
<td style="text-align: left;">-10.992***</td>
<td style="text-align: left;">-10.930***</td>
<td style="text-align: left;">-59.942***</td>
<td style="text-align: left;">-59.785***</td>
<td style="text-align: left;">-60.288***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-0.065</td>
<td style="text-align: left;">-1.963</td>
<td style="text-align: left;">-2.353</td>
<td style="text-align: left;">-10.948***</td>
<td style="text-align: left;">-10.972***</td>
<td style="text-align: left;">-10.912***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">6.649</td>
<td style="text-align: left;">2.247</td>
<td style="text-align: left;">-0.530</td>
<td style="text-align: left;">-0.110</td>
<td style="text-align: left;">-1.888</td>
<td style="text-align: left;">-2.301</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:pp"></span>Table 7.3: PP Unit Root Tests for x, y and Z
