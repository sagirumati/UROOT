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

**Plain text:**

    Mati S. (2023). URooTab: Tabular Reporting of 'EViews' Unit Root Tests. CRAN, https://github.com/sagirumati/URooTab

**Bibtex:**

      @Manual{Mati2023,
        title = {{URooTab}: Tabular Reporting of {EViews} Unit Root Tests},
        author = {Sagiru Mati},
        publisher = {CRAN},
        url = {https://github.com/sagirumati/URooTab},
      }

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

URooTab is an R package that can conducts `EViews` unit root tests and
report them in tabular form.

# 3 Why URooTab?

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

    library(URooTab)
    x = rnorm(100)
    y = cumsum(x)
    z = cumsum(y)
    dataFrame = data.frame(x, y, z)
    uroot(dataFrame, format = "markdown", caption = "Unit Root Tests for x, y and Z")
    #> 
    #> 
    #> Table: (\#tab:URooTab)Unit Root Tests for x, y and Z
    #> 
    #> |Variables |None      |Constant  |Constant and trend |None      |Constant  |Constant and trend |Decision |
    #> |:---------|:---------|:---------|:------------------|:---------|:---------|:------------------|:--------|
    #> |X         |-8.975*** |-8.928*** |-8.966***          |-9.570*** |-9.518*** |-9.461***          |I(0)     |
    #> |Y         |-1.294    |-1.456    |-2.402             |-8.914*** |-8.867*** |-8.909***          |I(1)     |
    #> |Z         |-0.642    |-2.520    |-1.007             |-1.290    |-1.465    |-2.520             |I(2)     |
    #> 
    #> 
    #> Table: (\#tab:URooTab)Unit Root Tests for x, y and Z
    #> 
    #> |Variables |None      |Constant  |Constant and trend |None       |Constant   |Constant and trend |Decision |
    #> |:---------|:---------|:---------|:------------------|:----------|:----------|:------------------|:--------|
    #> |X         |-8.976*** |-8.929*** |-8.966***          |-70.278*** |-73.635*** |-75.253***         |I(0)     |
    #> |Y         |-1.382    |-1.604    |-2.468             |-8.915***  |-8.868***  |-8.909***          |I(1)     |
    #> |Z         |0.776     |-1.875    |1.295              |-1.378     |-1.614     |-2.582             |I(2)     |

    adf(dataFrame, format = "markdown", caption = "ADF Unit Root Tests for x, y and Z")

<table style="width:100%;">
<caption><span id="tab:adf"></span>Table 7.1: ADF Unit Root Tests for x,
y and Z</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 19%" />
<col style="width: 10%" />
<col style="width: 10%" />
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
<td style="text-align: left;">-8.975***</td>
<td style="text-align: left;">-8.928***</td>
<td style="text-align: left;">-8.966***</td>
<td style="text-align: left;">-9.570***</td>
<td style="text-align: left;">-9.518***</td>
<td style="text-align: left;">-9.461***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-1.294</td>
<td style="text-align: left;">-1.456</td>
<td style="text-align: left;">-2.402</td>
<td style="text-align: left;">-8.914***</td>
<td style="text-align: left;">-8.867***</td>
<td style="text-align: left;">-8.909***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">-0.642</td>
<td style="text-align: left;">-2.520</td>
<td style="text-align: left;">-1.007</td>
<td style="text-align: left;">-1.290</td>
<td style="text-align: left;">-1.465</td>
<td style="text-align: left;">-2.520</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:adf"></span>Table 7.1: ADF Unit Root Tests for x, y and Z

    pp(dataFrame, format = "markdown", caption = "PP Unit Root Tests for x, y and Z")

<table>
<caption><span id="tab:pp"></span>Table 7.2: PP Unit Root Tests for x, y
and Z</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
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
<td style="text-align: left;">-8.976***</td>
<td style="text-align: left;">-8.929***</td>
<td style="text-align: left;">-8.966***</td>
<td style="text-align: left;">-70.278***</td>
<td style="text-align: left;">-73.635***</td>
<td style="text-align: left;">-75.253***</td>
<td style="text-align: left;">I(0)</td>
</tr>
<tr class="even">
<td style="text-align: left;">Y</td>
<td style="text-align: left;">-1.382</td>
<td style="text-align: left;">-1.604</td>
<td style="text-align: left;">-2.468</td>
<td style="text-align: left;">-8.915***</td>
<td style="text-align: left;">-8.868***</td>
<td style="text-align: left;">-8.909***</td>
<td style="text-align: left;">I(1)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Z</td>
<td style="text-align: left;">0.776</td>
<td style="text-align: left;">-1.875</td>
<td style="text-align: left;">1.295</td>
<td style="text-align: left;">-1.378</td>
<td style="text-align: left;">-1.614</td>
<td style="text-align: left;">-2.582</td>
<td style="text-align: left;">I(2)</td>
</tr>
</tbody>
</table>

<span id="tab:pp"></span>Table 7.2: PP Unit Root Tests for x, y and Z
