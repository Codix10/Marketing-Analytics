select * 
from products 


select 
	productid,
	productname,
	price,

	case -- Categorize the products into price categories: Low, Medium, High
		when price < 50 then 'Low' 
		when price between 50 and 200 then 'Medium' 
		else 'High' 
	end as [PriceCategory]

from
 dbo.products
