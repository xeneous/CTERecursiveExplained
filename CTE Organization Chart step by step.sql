-- Lets split the CTE Query Logic

-- Step 0 in 	
	Select id,position,fullname,isnull(id_Superior,'') id_superior,0 lvl
	from Organization_chart o
	where id_superior is null

-- Union All

-- Step 1 
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, lvl +1
	from 
	(
		Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
			from Organization_chart o
			where id_superior is null -- Step 0
	) chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior

-- Step 2
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
		from 
		(
			Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
				from Organization_chart o
				where id_superior is null -- Step 0
		) Chart0
		inner join Organization_chart o
		on chart0.id=o.id_superior -- Step 1
	) chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior

-- Step 3
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		-- Step 2
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl
		from 
		(
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
			from 
			(
				Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
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

-- Step 4
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		-- Step 2
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart2.lvl+1 lvl
		from 
		(
				-- Step 2
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl
			from 
			(
				Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
				from 
				(
					Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
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
		on chart2.id=o.id_superior
	) Chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior





Select id,position,fullname,isnull(id_Superior,'') id_superior,0 lvl
	from Organization_chart o
	where id_superior is null





Union All

-- Step 1 
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, lvl +1
	from 
	(
		Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
			from Organization_chart o
			where id_superior is null -- Step 0
	) chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior
Union
-- Step 2
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
		from 
		(
			Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
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
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		-- Step 2
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl
		from 
		(
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
			from 
			(
				Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
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
	Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior,chart_step.lvl+1
	from 
	(
		-- Step 2
		Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart2.lvl+1 lvl
		from 
		(
				-- Step 2
			Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart1.lvl+1 lvl
			from 
			(
				Select o.id,o.position,o.fullname,isnull(o.id_Superior,'') id_superior, Chart0.lvl+1 lvl
				from 
				(
					Select id,position,fullname,isnull(id_Superior,'') id_superior, 0 lvl
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
		on chart2.id=o.id_superior
	) Chart_step
	inner join Organization_chart o
	on chart_step.id=o.id_superior