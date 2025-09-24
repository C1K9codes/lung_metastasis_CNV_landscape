head(data_cna)      # First 6 rows
tail(data_cna)      # Last 6 rows
str(data_cna)       # Structure of dataset
summary(data_cna)   # Quick stats for each column

# Remove rows with all NAs
> data_clean <- data_cna[rowSums(is.na(data_cna)) != ncol(data_cna), ]

# Remove duplicate rows
> data_clean <- unique(data_clean)

# Optional: remove empty columns
> data_clean <- data_clean[, colSums(is.na(data_clean)) < nrow(data_clean)]

# Number of samples and features
dim(data_clean)

# Column names
colnames(data_clean)

# Quick summary
summary(data_clean)

# Check for remaining NAs
sum(is.na(data_clean))

# Check dimensions
dim(data_cna)

# Peek at first few rows
head(data_cna[, 1:5])  # first 5 samples

gene_counts <- rowSums(data_cna != 0)
sort(gene_counts, decreasing = TRUE)[1:10]  # top 10 altered genes

