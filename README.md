# The Epidemiologist R Handbook 

# About this handbook
**This is a free open-access R reference manual for applied epidemiologists and public health practitioners.**  

***Go to www.epiRhandbook.com to see the latest version of the online handbook.***

![Project logo](https://github.com/nsbatra/Epi_R_handbook/blob/master/images/R%20Handbook%20Logo.png)

**This book strives to:**  

* Serve as a quick R code reference manual  
* Provide task-centered examples for addressing common epidemiological problems  
* Assist epidemiologists transitioning to R from SAS, STATA, SPSS, and Excel  
* Be accessible in settings with low internet-connectivity via an **offline version** ([instructions here][Download book and data])  

**How is this different than other R books?**  

* It is written by epidemiologists, for epidemiologists - leveraging experience in local, national, academic, and emergency settings  
* It provides examples of epidemic curves, transmission chains, epidemic modeling and projections, age and sex pyramids and standardization, record matching, outbreak detection, survey analysis, causal diagrams, survival analysis, GIS basics, phylogenetic trees, automated reports, etc...  

# How to read this handbook {-} 

**Online version**  

* Search via the search box above the Table of Contents 
* Click the "copy" icons to copy code  
* See the "Resources" section of each page for further resources  
* To download data and "follow-along", see the [Download book and data] page  

**To download the offline version follow these steps:**

* Click on this [html file](https://github.com/nsbatra/Epi_R_handbook/tree/master/offline_long) the "offline_long" folder of this Github repository
* Click the “Download” button. A window will open with HTML source code.
* “Save As” the webpage, via right-click (windows) or Cmd-s (mac) - ensure the file type is “Webpage, Complete”
* The file is large (>40MB) so content may take time to appear. It displays as one long page, so search with Ctrl+f (Cmd-f).

**To download the datasets used in this book**  

* Go to the ["data" folder](https://github.com/nsbatra/Epi_R_handbook/tree/master/data) of this Github repository.  
* To “follow along” with any of the handbook examples that use the case linelist, download and load either the “linelist_raw.xlsx” (for the Cleaning data page), or “linelist_cleaned.rds” (for any other page).  

**Languages**  

We are actively seeking to translate this book into languages other than English. If you can help, please contact us at **epiRhandbook@gmail.com**.  



# Edit or contribute
Want to share how you use this book? Want to offer a fix or addition?  
Email us at **epiRhandbook@gmail.com**. We welcome your comments and suggestions. 

You can also submit an issue or pull request at our [Github repository](https://github.com/nsbatra/R_epi_handbook), or provide structured feedback via this [Google survey](https://forms.gle/4RNdRRLGx67xW9yq9). 


# Acknowledgements

This book is produced by a collaboration of epidemiologists from around the world, drawing upon experiences with organizations including local, state, provincial, and national health departments and ministries, the World Health Organization (WHO), MSF (Médecins Sans Frontières / Doctors without Borders), hospital systems, and academic institutions.

**Editor-in-Chief:** Neale Batra 

**Core team:** Neale Batra, Alex Spina, Amrish Baidjoe, Pat Keating, Henry Laurenson-Schafer, Finlay Campbell  

**Authors**: Neale Batra, Alex Spina, Paula Blomquist, Finlay Campbell, Henry Laurenson-Schafer, Isaac Florence, Natalie Fischer, Aminata Ndiaye, Liza Coyer, Jonny Polonski, Yurie Izawa, Daniel Molling, Sara Hollis, Isha Berry, Wen Lin  

**Reviewers**: 

## Funding and programmatic support {-}  

This handbook is **not** an approved product of any specific organization. Although we strive for accuracy, we provide no guarantee of the content in this book.  

The handbook project received funding via a COVID-19 emergency capacity-building grant from Training Programs in Epidemiology and Public Health Interventions Network ([TEPHINET](https://www.tephinet.org/)). *This handbook was supported by Cooperative Agreement number NU2GGH001873, funded by the Centers for Disease Control and Prevention through TEPHINET, a program of The Task Force for Global Health. Its contents are solely the responsibility of the authors and do not necessarily represent the official views of the Centers for Disease Control and Prevention, the Department of Health and Human Services, The Task Force for Global Health, Inc. or TEPHINET.*

Programmatic support was provided by the EPIET Alumni Network ([EAN](https://epietalumni.net/)).  



## Inspiration {-}  

The multitude of tutorials and vignettes that provided knowledge for development of handbook content are credited within their respective pages.  

More generally, the following sources provided inspiration and laid the groundwork for this handbook:  
[The "R4Epis" project](https://r4epis.netlify.app/) (a collaboration between MSF and RECON)  
[R Epidemics Consortium (RECON)](https://www.repidemicsconsortium.org/)  
[R for Data Science book (R4DS)](https://r4ds.had.co.nz/)  
[bookdown: Authoring Books and Technical Documents with R Markdown](https://bookdown.org/yihui/bookdown/)  
[Netlify](https://www.netlify.com) hosts this website  


## Image credits {-}  

Images in logo (from US CDC Public Health Image Library):  
[2013 Yemen looking for mosquito breeding sites](https://phil.cdc.gov/Details.aspx?pid=19623)  
[Ebola virus](https://phil.cdc.gov/Details.aspx?pid=23186)  
[Survey in Rajasthan](https://phil.cdc.gov/Details.aspx?pid=19838)  



# Terms of Use and License {-}  

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

