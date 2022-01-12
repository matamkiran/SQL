create or replace function filter_salary()
   returns table(total bigint, ftotal bigint) 
   language plpgsql
  as
$$
declare 
v_total integer :=0;
begin
 -- logic
 create temp table filter_table(tsum bigint,fsum bigint);
 
 insert into filter_table  select sum(sal) total,sum(sal)  FILTER (where sal<6000) filterd_sum  from employees;
  
  
  return  query select * from filter_table;
  
  drop table filter_table;
end;
$$

select * from filter_salary()