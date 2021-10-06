
### Northwind Datawarehouse
This repository was created in order to accomplish the 5th challenge of the [Data Analyst course](https://academy.indicium.tech/my/) from [Indicium](https://indicium.tech/).

Tthe challenge's taks was to use DBT to create a DW for the Northwind Traders Company. The DW should have the followingg tables
- Orders (Fact)
- Customers (Dimension)
- Products (Dimension)
- Shippers (Dimension)
- Suppliers (Dimension)

![Alt text](/images/conceptual.PNG?raw=true)

The PostgreSQL database was provided by [Indicium](https://indicium.tech/). The database was then extractet and loaded into GCP's BigQuery using [Stitch](https://www.stitchdata.com/). 

The transformation of the data was made using [dbt cloud](https://www.getdbt.com/).

### Running dbt
- dbt deps
- dbt run
- dbt test

### Preview

Lineage Graph
![Alt text](/images/lineage.PNG?raw=true)

Preview in BigQuery
- ![Alt text](/images/fact_orders.PNG?raw=true "Fact Orders")
- ![Alt text](/images/dim_customers.PNG?raw=true "Dim Customers")
- ![Alt text](/images/dim_products.PNG?raw=true "Dim Products")
- ![Alt text](/images/dim_shippers.PNG?raw=true "Dim Shippers")
- ![Alt text](/images/dim_suppliers.PNG?raw=true "Dim Suppliers")

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
