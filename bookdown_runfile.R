
# Use these commands to actually render the handbook
# See format and content choices below  

################################################################################

# render **the whole handbook** in "bs4 book" style
# (for online viewing only - not a self-contained file)  
bookdown::render_book(
     output_format = 'bookdown::bs4_book',
     config_file = "_bookdown.yml")


# render **ONLY SOME PAGES** in "bs4 book" style
# (for online viewing only - not a self-contained file)
# *** Edit which pages to include in "_small_bookdown.yml" ***
# WHEN DONE: Navigate to the "preview" folder and open "index.html"
bookdown::render_book(
     output_format = 'bookdown::bs4_book',
     config_file = "_small_bookdown.yml")

################################################################################

# to render the whole handbook, in "tabbed" style
# (for offline viewing - can be saved as a self-contained file)
rmarkdown::render_site(
     output_format = 'bookdown::html_document2')

# render **only specific pages** in "tabbed" style 
# (for offline viewing - can be saved as a self-contained file)
# Edit which pages are included in "_small_bookdown.yml"
# WHEN DONE: Navigate to the root project folder and open "_main.html"
bookdown::render_book(
     output_format = 'bookdown::html_document2',
     config_file = "_small_bookdown.yml")


################################################################################

# render the contribution guide:  

rmarkdown::render("contribution_guide_05-02-2021.Rmd", "html_document")

