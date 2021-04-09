
# Use these commands to actually render the handbook
# See format and content choices below  

################################################################################
# BS4 BOOKDOWN STYLE (WEBSITE VERSION) ##
#########################################
# WHOLE HANDBOOK
# for online viewing only - not available as a self-contained file  
bookdown::render_book(
     output_format = 'bookdown::bs4_book',
     config_file = "_bookdown.yml")


# PREVIEW ONLY ONE OR SOME PAGES
# Edit which pages to include in "_small_bookdown.yml"
# To view, navigate to the "preview" folder and open "index.html"
bookdown::render_book(
     output_format = 'bookdown::bs4_book',
     config_file = "_small_bookdown.yml")

################################################################################

# WHOLE HANDBOOK WITHOUT TABS (long html)
# Available as a self-contained html file
# Ctrl+f Search functionality spans whole book

bookdown::render_book(
        output_format = 'bookdown::html_document2',
        config_file = "_offline_long.yml")


################################################################################

# WHOLE HANDBOOK AS TABBED HTML
# for offline viewing - can be saved as a self-contained file
rmarkdown::render_site(
     output_format = 'bookdown::html_document2')

# PREVIEW ONLY ONE OR SOME PAGES (tabbed html)
# For offline viewing - can be saved as a self-contained file
# Edit which pages are included in "_small_bookdown.yml"
# To view: navigate to the root project folder and open "_main.html"
bookdown::render_book(
     output_format = 'bookdown::html_document2',
     config_file = "_small_bookdown.yml")


################################################################################

# Render Long static pdf without tabs

bookdown::render_book(
        output_format = 'bookdown::html_document2',
        config_file = "_pdf_long.yml")




# render the contribution guide:  

rmarkdown::render("contribution_guide_05-02-2021.Rmd", "html_document")

