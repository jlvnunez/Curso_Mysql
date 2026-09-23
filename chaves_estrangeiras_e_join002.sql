select nome,cursopreferido from gafanhotos;

select nome,ano from cursos;
select * from gafanhotos;


select gafanhotos.nome,gafanhotos.cursopreferido,cursos.nome,cursos.ano
 from gafanhotos join cursos
 on cursos.idcurso =gafanhotos.cursopreferido
 order by gafanhotos.nome;
 
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos AS g 
LEFT JOIN cursos AS c
ON c.idcurso = g.cursopreferido;
