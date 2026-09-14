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
rename to gafanhotos;pma__users
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

desc cursos;

alter table cursos
add primary key(idcurso);

insert into cursos values 
('1','HTML5','Curso html5','40','35','2022'),
('2','Css3',' Curso Css3','40','38','2025'),
('3','JavaScript','Curso JavaScript','40','30','2023'),
('4','Logica de Programacao','Curso Logica de Programacao','40','35','2022'),
('5','PGP','Curso de PHP','30','25','2020'),
('6','Msql','Curso de Msql ','40','35','2026'),
('7','Word','Curso de Word ','20','15','2026'),
('8','Jarva','Curso de Java ','40','50','2026'),
('9','Ingles','Curso de Ingles ','80','40','2024'),
('10','Matematica','Curso de Matematica ','40','36','2025');

select * from cursos;

update cursos
set nome = 'Html 5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano='2019'
where idcurso ='5';

update cursos
set nome = 'Java', carga = '60',ano='2025'
where idcurso ='8'
limit 1;

delete from cursos
where idcurso ='8';
select * from cursos;




	