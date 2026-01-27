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
"The insights below are derived from step-by-step analysis of markets, products, and customers and will be expanded as additional sections are completed."

### Market Performance (2023–2024)
#### Business Question
How did key markets perform in 2023–2024 in terms of revenue, order volume, and average order value (AOV)?

#### Markets Analyzed
- China
- United States
- South Korea
- Brazil

#### Metrics
- Orders: count of distinct orders
- Revenue: total sales value
- AOV (Average Order Value): revenue divided by number of orders

#### Approach
Data from 2023 and 2024 was aggregated at the country level. 
For each market, total revenue, number of orders, and AOV were calculated and compared across years to identify differences in market size and customer purchasing behavior.

#### Key Findings
- China and the United States generated the highest total revenue in both 2023 and 2024 and these two markets also recorded the highest number of orders, indicating large market scale.
- South Korea consistently showed the highest average order value (AOV), despite having significantly fewer orders.
- Brazil showed steady growth in revenue and order volume, with relatively stable AOV across both years.

#### Interpretation
China and the United States represent large-scale markets driven by high transaction volume, while South Korea appears to be a higher-value market where customers place fewer but more expensive orders. This suggests differences in purchasing behavior across markets rather than uniform growth patterns.

### Product Analysis – Value vs Volume
The insights below are derived from step-by-step analysis of markets, products, and customers and will be expanded as additional sections are completed.

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
Volume-driven products may be effective for customer acquisition or bundling strategies, while value-driven products represent the main contributors to total revenue.


### Additional Insight – Revenue vs Volume Leaders
The top products by revenue differ entirely from the top products by sales volume. Revenue is mostly concentrated in a small number of high-priced products.

### Customer Growth & Quality

## Files Structure
*(optional)*

