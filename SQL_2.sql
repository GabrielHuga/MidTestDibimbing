-- Buat tabel jika belum ada
create table email_list (
    id serial primary key,
    email varchar(255) not null
);

-- Masukkan data ke dalam tabel
insert into email_list (email)
values
    ('abc@gmail.com'),
    ('def@gmail.com'),
    ('abc@yahoo.com'),
    ('abc@gmail.com'),
    ('def@gmail.com'),
    ('def@gmail.com'),
    ('abc@bing.com');

-- Final Query untuk menghasilkan output yang diharapkan
select email
from email_list
group by email
having count(*) > 1;