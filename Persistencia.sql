create table tb_ambientes(
	id int primary key,
	nome varchar(255)
)

create table tb_usuarios(
	id int primary key,
	nome varchar(255),
)

create table tb_usuarios_ambientes(
	fk_ambiente int foreign key references tb_ambientes(id),
	fk_usuarios int foreign key references tb_usuarios(id)
)


create table tb_log(
		id int primary key identity(1, 1),
		dtAcesso DateTime,
		fk_usuario int foreign key references tb_usuarios(id),
		fk_ambiente int foreign key references tb_ambientes(id),
		tpAcesso bit
)


insert into tb_ambientes values (1, 'Ambiente Teste 1');

insert into tb_usuarios values (1, 'Joao')
insert into tb_usuarios values (2, 'Maria')

insert into tb_usuarios_ambientes values (1, 1)
insert into tb_usuarios_ambientes values (1, 2)

insert into tb_log values (Getdate(), 1, 1, 1)

drop table tb_usuarios_ambientes
drop table tb_usuarios
drop table tb_ambientes
drop table tb_log