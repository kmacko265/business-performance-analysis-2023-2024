# Market, Product & Customer Performance Analysis (2023–2024)

## Project Overview
This project analyzes business performance across key markets, products, and customer segments using transactional data from 2023–2024. 
The goal is to identify growth patterns, value drivers, and potential risk areas by combining SQL-based analysis with business-oriented insights and visualizations.

## Business Questions
1. Market performance (2023–2024)
2. Product value vs. volume
3. Customer growth & quality

## Dataset
thelook_ecommerce (BigQuery public dataset)

## Tools
- SQL (BigQuery)
- Power BI
- Excel

## Key Insights
Product Analysis – Value vs Volume

### Business Question
Which products drive revenue, and which products drive sales volume?

### Metrics
- Units sold: count of rows in `order_items` (each row represents one sold unit)
- Revenue: sum of `order_items.sale_price`

### Approach
Order-level data was aggregated at the product level by joining `order_items` with `products`. 
Products were ranked by both units sold and total revenue to compare volume-driven and value-driven performance.

### Key Findings
- High-volume products tend to generate relatively lower revenue per unit.
- Revenue is driven by a smaller number of high-priced, low-volume products.
- This indicates a clear trade-off between volume drivers and value drivers.

### Business Interpretation
Volume-driven products may be effective for customer acquisition or bundling strategies, while value-driven products represent critical revenue contributors but also introduce concentration risk.

### Additional Insight – Revenue vs Volume Leaders
The top products by revenue differ entirely from the top products by sales volume. Revenue is mostly concentrated in a small number of high-priced products.

## Files Structure
*(optional)*

