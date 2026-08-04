# BDA400 Assignment 1
# Synthetic Sales Data Analysis
# This script imports synthetic sales data, calculates revenue,
# summarizes results, and creates a bar chart.

# Load required packages
library(readr)
library(dplyr)
library(ggplot2)

# Import the synthetic sales dataset
sales_data <- read_csv("data/synthetic_sales.csv")

# Preview the dataset
head(sales_data)

# Check the structure of the dataset
str(sales_data)

# Calculate revenue for each sales record
sales_data <- sales_data %>%
  mutate(revenue = units_sold * unit_price)

# Summarize total revenue by product
product_summary <- sales_data %>%
  group_by(product) %>%
  summarise(
    total_revenue = sum(revenue),
    .groups = "drop"
  ) %>%
  arrange(desc(total_revenue))

# Display product summary
print(product_summary)

# Summarize total revenue by region
region_summary <- sales_data %>%
  group_by(region) %>%
  summarise(
    total_revenue = sum(revenue),
    .groups = "drop"
  ) %>%
  arrange(desc(total_revenue))

# Display region summary
print(region_summary)

# Identify the highest-performing product
highest_product <- product_summary %>%
  slice_max(
    order_by = total_revenue,
    n = 1,
    with_ties = FALSE
  )

# Display the highest-performing product
print(highest_product)

# Create a bar chart of total revenue by product
ggplot(
  product_summary,
  aes(x = reorder(product, total_revenue), y = total_revenue)
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Total Revenue by Product",
    x = "Product",
    y = "Total Revenue"
  ) +
  theme_minimal()
