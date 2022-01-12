--select * from employees

create or replace function calculate_total_sal()
   returns integer 
   language plpgsql
  as
$$
declare 
v_total integer :=0;
begin
 -- logic
  select sum(sal)::integer into v_total from employees;
 return v_total;
end;
$$

select * from calculate_total_sal()

select * from employees 