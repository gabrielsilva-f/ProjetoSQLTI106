drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

create table tbFuncionarios(
codfunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc)
);

create table tbUsuarios(
codusu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc)references tbFuncionarios(codfunc)
);

create table tbFornecedores(
codforn int null auto_increment,
nome varchar(100),
cnpj char(18),
inscrEst char(15),
email varchar(100),
telefone char(10),
primary key(codForn)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal(9,2) check(valor >= 0),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbCliente(
codCli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
telefone char(10),
primary key(codCli)
);

create table tbVendas(
codVend int not null auto_increment,
codProd int not null,
codCli int not null,
codusu int not null,
dataVenda date,
horaVenda time,
quantidade int,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbCliente(codCli),
foreign key(codusu)references tbUsuarios(codusu)
);

desc tbProdutos;
desc tbUsuarios;
desc tbFuncionarios;
desc tbFornecedores;
desc tbCliente;
desc tbVendas;

-- dados da tbFuncionarios

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values('Vini Malvadeza','vini.malvadezas@gmail.com','231.421.789-00','4500.00','M');

-- dados da tbUsuario
insert into tbUsuarios(nome,senha,codfunc)values('vini.malvadezas','123456',1);

-- dados da tbFornecedores

insert into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('vapo entretenement','25.147.235.0001/38','253.235.147-110','vapo@empresa.com.br','98273-1928');

-- dados da tbProdutos
insert into tbProdutos(descricao,quantidade,valor,codForn)values('banana',12,10.99,1);
insert into tbProdutos(descricao,quantidade,valor,codForn)values('laranja',13,12.99,1);

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbFornecedores;
select * from tbCliente;
select * from tbVendas;