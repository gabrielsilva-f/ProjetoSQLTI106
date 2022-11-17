drop datbase dbEstacionamento

-- criando o banco de dados
create database dbEstacionamento;

use dbEstacionamento;

-- criando as tabelas para o banco de dados
create table tbCarros(
codCar int auto_increment,
placa varchar(8),
cor  varchar(10),
modelo varchar(15),
ano char(4),
data_Entrada date,
hora_Entrada time,
data_Saida date,
hora_Saida time,
primary key(codCar)
);

-- inserindo valores nas tabelas
insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('25JHSN7','vermelho','mercedes-G','2012','2022/11/11','22:12:09','22/11/11','00:01:10');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('24JSXNJ','vermelho','mercedes-GLE-500','2023','2022/11/12','21:15:09','22/11/12','23:45:00');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('20JHXXL','preto','Lamborghini-URUS','2022','2022/11/10','21:17:14','22/11/10','22:03:03');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('29JGSBI','preto','Lamborghini-URUS','2022','2022/11/10','19:17:05','22/11/10','21:26:24');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('890GBAD','cinza','mclaren-720S','2022','2022/11/10','22:12:59','22/11/10','00:39:03');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('09GHBKA','preto','ferrari-458-SPIDER','2022','2022/11/12','18:17:02','22/11/12','20:20:10');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('JNAS29V','cinza','mclaren-720S','2023','2022/11/10','18:18:17','22/11/10','20:34:50');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('KNAS093','branco','mclaren-520S','2023','2022/11/11','19:12:44','22/11/11','21:23:45');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('AJNS572','branco','ferrari-LAFERRARI','2022','2022/11/10','22:12:36','22/11/10','00:24:21');

insert into tbCarros(placa,cor,modelo,ano,data_Entrada,hora_Entrada,data_Saida,hora_Saida)
values('HJASN28','cinza','ferrari-LAFERRARI','2023','2022/11/10','21:12:19','22/11/10','00:55:52');


desc tbCarros;

select * from tbCarros; 

update tbCarros set cor = 'preto' where placa = '09GHBKA';
select * from tbCarros where placa = '09GHBKA';

update tbCarros set cor = 'cinza' where placa = '890GBAD';
select * from tbCarros where placa = '890GBAD';

update tbCarros set cor = 'vermelho' where placa = 'AJNS572';
select * from tbCarros where placa = 'AJNS572';

update tbCarros set cor = 'branco' where placa = '20JHXXL';
select * from tbCarros where placa = '20JHXXL';

update tbCarros set cor = 'vermelho' where placa = 'KNAS093';
select * from tbCarros where placa = 'KNAS093';

select * from dbCarros where ferrari-458-SPIDER;
