select * 
from dbo.engagement_data

select 
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	engagementdate,
	UPPER(REPLACE(ContentType,'Socialmedia','Social Media')) as ContentType,
	left(viewsClickscombined,CHARINDEX('-',viewsClickscombined)-1) as [Views],
	RIGHT(viewsClickscombined,LEN(viewsClicksCombined)-CHARINDEX('-',viewsClickscombined)) as Clicks,
	Likes
from dbo.engagement_data
where 
	ContentType != 'Newsletter'