/* ex001*/
select * from gafanhotos;
select profissao ,count(*) as quantidade from gafanhotos
group by profissao
order by quantidade desc;

/* ex002*/
select sexo,count(*) as quantidade from gafanhotos
where nascimento >'2005-01-01'
group by sexo;

/* ex003*/
select nacionalidade as pais,count(*)as total_pessoas from gafanhotos
where nacionalidade not in('Brasil')  
/* ou dessa forma =>where nacionalidade !='Brasil'*/
group by nacionalidade
having count(*) >3;

/* ex004*/
select nome,altura,peso,count(*) as quantidade from gafanhotos 
where peso >100
and altura>(select avg(altura) from gafanhotos)
group by altura
order by nome;













  
    


 



