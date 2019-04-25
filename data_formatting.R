# Path to input file
input_file <- "C:/Users/mslip/OneDrive/Desktop/sample_data.txt"
# Read file into data.frame
Data <- read.table(input_file, sep = "", header = FALSE)

# Optional: Assign column names
# There's 24 columns so supply 24 column names 
# and match format below. 
# colnames(Data) <- c("Col_1","Col_2")

# View Data
View(Data)