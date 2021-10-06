
### Northwind Datawarehouse
This repository was created in order to accomplish the 5th challenge of the [Data Analyst course](https://academy.indicium.tech/my/) from [Indicium](https://indicium.tech/).

Tthe challenge's taks was to use DBT to create a DW for the Northwind Traders Company. The DW should have the followingg tables
- Orders (Fact)
- Customers (Dimension)
- Products (Dimension)
- Shippers (Dimension)
- Suppliers (Dimension)

![Alt text](/images/conceptual.png?raw=true)

The PostgreSQL database was provided by [Indicium](https://indicium.tech/). The database was then extractet and loaded into GCP's BigQuery using [Stitch](https://www.stitchdata.com/). 

The transformation of the data was made using [dbt cloud](https://www.getdbt.com/).

### Running dbt
- dbt deps
- dbt run
- dbt test

### Preview

![Alt text](/images/preview.png?raw=true)
![Alt text](/images/lineage.png?raw=true)


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
