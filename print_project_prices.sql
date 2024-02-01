select p.id as ID, p.name as NAME, sum(w.salary) as price
from project p 
	left join worker w on exists (select from project_worker pw where pw.project_id = p.id and pw.worker_id = w.id)
group by p.id, p.name