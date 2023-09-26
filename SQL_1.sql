-- Buat tabel input_table jika belum ada
create table input_table (
    id serial primary key,
    num int
);

-- Masukkan data ke dalam tabel
insert into input_table (id, num)
values
    (1, 1),
    (2, 2),
    (3, 2),
    (4, 2),
    (5, 2),
    (6, 1),
    (7, 1),
    (8, 1),
    (9, 1);

-- Final Query untuk menghasilkan output yang diharapkan
with consecutive_counts as (
  select
    num,
    lag(num) over (order by id) as prev_num,
    num as current_num,
    lead(num) over (order by id) as next_num
  from input_table
)
select distinct current_num as num
from consecutive_counts
where current_num = prev_num and current_num = next_num
order by num asc;