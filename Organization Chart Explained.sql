Drop table if exists #Chart

--Step 0
Select id,position,fullname,isnull(id_Superior,'') id_superior,0 lvl,cast('0' as varchar(50)) tree_order
	into #Chart
	from Organization_chart o
	where id_superior is null




Union All
-- Step 1 
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, lvl +1, cast(tree_order + cast(o.id as varchar) as varchar(50))
	from 
	( -- NESTEED Step 0 Subquery
		Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl,cast('0' as varchar(50)) tree_order
			from Organization_chart o
			where id_superior is null -- Step 0
	) chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior
Union
-- Step 2
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1, cast(tree_order + cast(o.id as varchar) as varchar(50))
	from 
	( -- NESTEED Step 1 Subquery
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
		from 
		( -- NESTEED Step 0 Subquery
			Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl,cast('0' as varchar(50)) tree_order
				from Organization_chart o
				where id_superior is null -- Step 0
		) Chart0
		inner join Organization_chart o
		on chart0.id=o.id_superior -- Step 1
	) chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior
Union
-- Step 3
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1, cast(tree_order + cast(o.id as varchar) as varchar(50))
	from 
	( -- NESTEED Step 2 Subquery
		-- Step 2
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
		from 
		( -- NESTEED Step 1 Subquery
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
			from 
			( -- NESTEED Step 0 Subquery
				Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl,cast('0' as varchar(50)) tree_order
					from Organization_chart o
					where id_superior is null -- Step 0
			) Chart0
			inner join Organization_chart o
			on chart0.id=o.id_superior -- Step 1
		) Chart1
		inner join Organization_chart o
		on chart1.id=o.id_superior -- Step 2
	) Chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior
Union
-- Step 4
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1, cast(tree_order + cast(o.id as varchar) as varchar(50))
	from 
	( -- NESTEED Step 3 Subquery
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart2.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
		from 
		( -- NESTEED Step 2 Subquery
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
			from 
			( -- NESTEED Step 1 Subquery
				Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl, cast(tree_order + cast(o.id as varchar) as varchar(50)) tree_order
				from 
				( -- NESTEED Step 0 Subquery
					Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl,cast('0' as varchar(50)) tree_order
						from Organization_chart o
						where id_superior is null -- Step 0
				) Chart0
				inner join Organization_chart o
				on chart0.id=o.id_superior -- Step 1
			) Chart1
			inner join Organization_chart o
			on chart1.id=o.id_superior -- Step 2
		) Chart2
		inner join Organization_chart o
		on chart2.id=o.id_superior -- Step 3
	) Chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior
	order by tree_order

Select case when lvl=0 then fullname + '-' + position else '' end l0,
case when lvl=1 then fullname + '-' + position else '' end l1,
case when lvl=2 then fullname + '-' + position else '' end l2,
case when lvl=3 then fullname + '-' + position else '' end l3,
case when lvl=4 then fullname + '-' + position else '' end l4, tree_order
from #chart
order by  tree_order
