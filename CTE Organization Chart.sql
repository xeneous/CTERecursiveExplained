with chart 
as 
(
	Select id,position,fullname,isnull(id_Superior,'') id_superior,0 lvl,cast('0' as varchar(50)) tree_order
	from Organization_chart o
	where id_superior is null

	union all
	   
	Select o1.id,o1.position,o1.fullname,o1.id_superior,o.lvl+1, cast(tree_order + cast(o1.id as varchar) as varchar(50))
	from chart o
	inner join Organization_Chart o1 on o1.id_superior=o.id

)
Select case when lvl=0 then fullname + '-' + position else '' end l0,
case when lvl=1 then fullname + '-' + position else '' end l1,
case when lvl=2 then fullname + '-' + position else '' end l2,
case when lvl=3 then fullname + '-' + position else '' end l3,
case when lvl=4 then fullname + '-' + position else '' end l4, tree_order
from chart
order by  tree_order

