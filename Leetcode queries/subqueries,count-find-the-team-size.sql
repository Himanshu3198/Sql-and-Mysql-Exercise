select employee_id, (select count(team_id) from employee where team_id = e1.team_id) as team_size
from employee e1
order by employee_id asc;
