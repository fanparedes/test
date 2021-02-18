select 
pub.id, 
pub.name,
pub.code
from company as com
inner join project as pro On (com.id = pro.company_id)
left join permit_request as per_req On (pro.id = per_req.project_id)
left join permit as per On (per_req.permit_id = per.id)
right join public_service as pub On (permit.public_service_id = pub.id)
where com.name = "Morgan SA"


