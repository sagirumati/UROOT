# URooTab: URooTab: Tabular Reporting of ‘EViews’ Unit Root Tests

# Monday: August 28, 2023

<!-- <img src="inst/figures/URooTab.png" align="right" width="120" /> -->

<!-- badges: start -->
<!-- [![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/URooTab)](https://cran.r-project.org/package=URooTab) -->
<!-- [![CRAN_Status_Badge](https://cranlogs.r-pkg.org/badges/grand-total/URooTab?color=49C31B)](https://cranlogs.r-pkg.org/badges/grand-total/URooTab?color=49C31B) -->
<!-- [![](https://cranlogs.r-pkg.org/badges/URooTab?color=49C31B)](https://cranlogs.r-pkg.org/badges/URooTab?color=49C31B) -->
<!-- [![R-CMD-check](https://github.com/sagirumati/URooTab/actions/workflows/check-standard.yaml/badge.svg)](https://github.com/sagirumati/URooTab/actions/workflows/check-standard.yaml) -->
<!-- badges: end -->

Please do not forget to cite the package as follows:

Mati S. (2023). URooTab: Tabular Reporting of ‘EViews’ Unit Root Tests.
CRAN, <https://github.com/sagirumati/URooTab>

@Manual{2023, title = {URooTab: Tabular Reporting of ‘EViews’ Unit Root
Tests}, author = {Sagiru Mati}, publisher = {CRAN}, url =
{<https://github.com/sagirumati/URooTab>}, } \# About the Author

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

# 1 About URooTab

URooTab is an R package that can conducts `EViews` unit root tests and
report them in tabular form.

# 2 Why URooTab?

While there are R packages and EViews add-ins available for presenting
unit root tests in tabular form, none of them incorporates **EViews**
procedures within the R environment. Specifically:

-   I wish I could conduct unit root using EViews routines in R, R
    Markdown or Quarto document

-   I wish I could dynamically import the results of the unit root tests
    individually or at once into R, R Markdown or Quarto document
    without switching between these applications back and forth.

-   I wish I could use an R function to report unit root test in a table
    style suitable for publication.

-   I wish I could automatically format the table in `Latex`, `html`,
    `pandoc` and `markdown`.

-   I wish I could do all of the above from R, R Markdown or Quarto
    without opening the EViews!!!

# 3 Installation

URooTab can be installed using the following commands in R.

    install.packages("URooTab")
    OR
    devtools::install_github("sagirumati/URooTab")

# 4 Setup

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

# 5 Usage

Please load the URooTab package as follows:

    ```{r}                                                                .
    library(URooTab)
    ```

# 6 Ways to use URooTab

The package can work with base R, R Markdown or Quarto document.

## 6.1 URooTab along with R Markdown or Quarto document

You can use `URooTab` in an R chunk in R Markdown or Quarto document

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 6.1: Unit Root Tests for x,
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
<td style="text-align: left;">-10.000***</td>
<td style="text-align: left;">-10.093***</td>
<td style="text-align: left;">-10.037***</td>
<td style="text-align: left;">-7.832***</td>
<td style="text-align: left;">-7.790***</td>
<td style="text-align: left;">-7.742***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">0.263</td>
<td style="text-align: left;">-0.824</td>
<td style="text-align: left;">-1.732</td>
<td style="text-align: left;">-10.092***</td>
<td style="text-align: left;">-10.156***</td>
<td style="text-align: left;">-10.097***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">-0.482</td>
<td style="text-align: left;">-0.463</td>
<td style="text-align: left;">-1.750</td>
<td style="text-align: left;">0.259</td>
<td style="text-align: left;">-0.700</td>
<td style="text-align: left;">-1.905</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 6.1: Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:URooTab"></span>Table 6.1: Unit Root Tests for x,
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
<td style="text-align: left;">-10.000***</td>
<td style="text-align: left;">-10.094***</td>
<td style="text-align: left;">-10.037***</td>
<td style="text-align: left;">-69.058***</td>
<td style="text-align: left;">-70.497***</td>
<td style="text-align: left;">-78.858***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">0.300</td>
<td style="text-align: left;">-0.801</td>
<td style="text-align: left;">-1.761</td>
<td style="text-align: left;">-10.091***</td>
<td style="text-align: left;">-10.154***</td>
<td style="text-align: left;">-10.096***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">8.740</td>
<td style="text-align: left;">6.001</td>
<td style="text-align: left;">1.012</td>
<td style="text-align: left;">0.285</td>
<td style="text-align: left;">-0.681</td>
<td style="text-align: left;">-1.915</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:URooTab"></span>Table 6.1: Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:adf"></span>Table 6.2: ADF Unit Root Tests for x,
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
<td style="text-align: left;">-10.000***</td>
<td style="text-align: left;">-10.093***</td>
<td style="text-align: left;">-10.037***</td>
<td style="text-align: left;">-7.832***</td>
<td style="text-align: left;">-7.790***</td>
<td style="text-align: left;">-7.742***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">0.263</td>
<td style="text-align: left;">-0.824</td>
<td style="text-align: left;">-1.732</td>
<td style="text-align: left;">-10.092***</td>
<td style="text-align: left;">-10.156***</td>
<td style="text-align: left;">-10.097***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">-0.482</td>
<td style="text-align: left;">-0.463</td>
<td style="text-align: left;">-1.750</td>
<td style="text-align: left;">0.259</td>
<td style="text-align: left;">-0.700</td>
<td style="text-align: left;">-1.905</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:adf"></span>Table 6.2: ADF Unit Root Tests for x, y and Z

<table style="width:100%;">
<caption><span id="tab:pp"></span>Table 6.3: PP Unit Root Tests for x, y
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
<td style="text-align: left;">-10.000***</td>
<td style="text-align: left;">-10.094***</td>
<td style="text-align: left;">-10.037***</td>
<td style="text-align: left;">-69.058***</td>
<td style="text-align: left;">-70.497***</td>
<td style="text-align: left;">-78.858***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">0.300</td>
<td style="text-align: left;">-0.801</td>
<td style="text-align: left;">-1.761</td>
<td style="text-align: left;">-10.091***</td>
<td style="text-align: left;">-10.154***</td>
<td style="text-align: left;">-10.096***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">8.740</td>
<td style="text-align: left;">6.001</td>
<td style="text-align: left;">1.012</td>
<td style="text-align: left;">0.285</td>
<td style="text-align: left;">-0.681</td>
<td style="text-align: left;">-1.915</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:pp"></span>Table 6.3: PP Unit Root Tests for x, y and Z
