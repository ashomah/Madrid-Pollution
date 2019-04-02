
### THIS SCRIPT CALLS ALL SUB-SCRIPTS TO READ AND PREPARE THE DATASET,
### RUN THE ANALYSIS AND OUTPUT RELEVANT DATAF FILES

start_time <- Sys.time()
print(paste0('---START--- Starting at ',start_time))

# Install necessary packages
source('scripts/install_packages.R')

# Read data and Prepare Working Dataset
source('scripts/read_dataset.R')

# Plot time series
source('scripts/plot_timeseries.R')

# Plot correlation
source('scripts/plot_correlation.R')

# Calculate Linear Regression
source('scripts/linear_regression.R')

print(paste0('[', round(difftime(Sys.time(),start_time, units = 'secs'),1), 's]: ',
             'All operations are over!'))

# Render RMarkdown report
invisible(rmarkdown::render('Madrid-Pollution_Report.Rmd', 'github_document'))
invisible(rmarkdown::render('Madrid-Pollution_Report.Rmd', 'html_document'))

print(paste0('[', round(difftime(Sys.time(),start_time, units = 'secs'),1), 's]: ',
             'Report generated! ---END---'))

