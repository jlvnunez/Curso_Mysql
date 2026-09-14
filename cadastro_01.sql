insert into pessoas values
(default,'Claudia','1973-03-28','F','45','1.50','Brasil'),
(default,'Maria','1993-03-29','F','45','1.60','Brasil'),
(default,'Joao','1996-03-18','M','85','1.75','Brasil'),
(default,'Jose Luis','1970-09-01','M','103','1.80','Espanha');



select * from pessoa;

desc pessoas;
alter table pessoas
add column profissao varchar(10);
desc pessoas;

alter table pessoas
drop column profissao;

desc pessoas;

alter table pessoas
add column profissao varchar(10)after nome;

alter table pessoas
add codigo int first;

alter table pessoas
modify profissao varchar(20) not null default '';
desc pessoas;
select * from pessoas;
alter table pessoas 
change profissao prof varchar(20);

alter table pessoas
rename to gafanhotos;
select * from gafanhotos;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text ,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
)default charset = utf8;

select * from cursos;
desc cursos;
alter table cursos
add idcurso int first;

alter table cursos
add primary key(idcurso);








	