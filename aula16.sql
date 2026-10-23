use cadastro;

insert into gafanhoto_assiste_curso values
(default,'2026,03,01',1,2);
select *from gafanhoto_assiste_curso;

select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;cursos

select g.nome,idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
order by g.nome;

select g.nome,c.nome,c.descricao from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on a.idcurso = c.idcurso
order by g.nome;


