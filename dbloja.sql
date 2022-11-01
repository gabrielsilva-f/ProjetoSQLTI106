-- apagar bando de dados
drop database dbloja;

-- criando banco de dados
create database dbloja;

-- visualizando o banco de dados
show databases;

-- acessando o banco de dados
use dbloja;

-- criando as tabelas para banco de dados
create table tbFuncionarios(
codfunc int auto_increment,
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codfunc)
);



create table tbUsuarios(
codusu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codusu)
);

-- visualizando as tabelas no banco de dados
show tables;

-- visualisando a estrutura das tabelas ou seja:(como ela foi montada)
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Romario da Silva Cunha','romarinhoS2@gmail.com','288.976.030-63','95638-6231');

insert into tbFuncionarios(nome,email,cpf,tel)
values('Maria dos Santos borges','maria.m@gmail.com','371.986.020-87','99775-6571');

insert into tbUsuarios(nome,senha)values('romarinhoS2','123456');

insert into tbUsuarios(nome,senha)values('maria.m','654321');

--visualizando os registros das tabelas
select * from tbFuncionarios;
select * from tbUsuarios;

--alterando os registros da tabelas
update tbUsuarios set senha = '124323578' where codusu =2;

select * from tbUsuarios;

-- excluindo os regristros da tabelas
delete from tbUsuarios where codusu=1;

select * from tbUsuarios;