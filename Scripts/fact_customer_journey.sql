USE PortfolioProject_MarketingAnalytics;		
with DuplicateRecords as (
select 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	[Action],
	Duration,
Row_number() 
	over(
		partition by CustomerId,productid,visitdate,stage,action
		order by journeyid asc
	) as row_num
from
	dbo.customer_journey
)

select * 
from DuplicateRecords
where row_num > 1
order by journeyID



select 
	journeyid,
	customerid,
	productid,
	visitdate,
	stage,
	action,
	coalesce(duration,avg_duration) as avg_duration
from
(
select 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	UPPER(Stage) as Stage,
	Action,
	Duration,
	AVG(Duration) over(Partition by VisitDate) as avg_duration,
	ROW_NUMBER() over (
		partition by customerid,productid,visitdate, upper(stage),action
		order by journeyid
	) as row_num
from	
	dbo.customer_journey
) as subquery
where 
	row_num = 1