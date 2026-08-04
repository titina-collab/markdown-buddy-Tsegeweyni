> **AI Assistance Declaration:** I used ChatGPT to help organize the README structure, draft Markdown formatting, and improve clarity. Prompts used are documented in the Appendix. I verified the output by reviewing the Markdown syntax, previewing the file, and checking that the project description, package names, file names, and example code were accurate. All final decisions and edits were completed by me. I am responsible for the accuracy and originality of this work.

# Synthetic Sales Data Analysis

## Overview

This R project analyzes a synthetic sales dataset to demonstrate a simple data analysis workflow. The project imports sales data, calculates revenue, summarizes sales performance by product and region, and creates a bar chart.

The dataset is fully synthetic and does not contain personal or confidential information.

## Objectives

The main objectives of this project are to:

- Import a synthetic sales dataset into R.
- Inspect the dataset for structure and data quality.
- Calculate revenue for each sales record.
- Summarize revenue by product.
- Summarize revenue by region.
- Identify the highest-performing product.
- Create a clear sales visualization.

## Dataset

The project uses a file named `synthetic_sales.csv`.

The dataset contains the following variables:

| Variable | Description |
|---|---|
| `date` | Date of the sales transaction |
| `product` | Name of the product |
| `region` | Sales region |
| `units_sold` | Number of units sold |
| `unit_price` | Price per unit |

A new variable named `revenue` is calculated in R by multiplying `units_sold` by `unit_price`.

## Project Structure

```text
markdown-buddy-titina/
├── README.md
├── sales_analysis.R
├── sales_documentation.Rmd
├── Reflection.md
├── Appendix.md
└── data/
    └── synthetic_sales.csv
