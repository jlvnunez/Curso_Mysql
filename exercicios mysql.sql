select * from gafanhotos;

select * from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento between '2000/01/01' and '2015/12/31' order by nascimento asc;

select * from gafanhotos where sexo ='M' and profissao='Programador' order by nome;

select *from gafanhotos where sexo ='F' and nacionalidade in ('Brasil') and nome like 'J%';

select nome from gafanhotos where sexo ='M' and nome like '%Silva%' and nacionalidade not in ('Brasil') and peso < 100;

SELECT nome ,max(altura) from gafanhotos where sexo ='M' and nacionalidade in('Brasil');

select avg(peso) from gafanhotos;

select nome,nacionalidade,nascimento,min(peso) from gafanhotos
where sexo='F' and nacionalidade not in('Brasil')
and nascimento between '1990/01/01' and '2015/12/31'
order by peso asc;

select count(altura) from gafanhotos
where sexo ='F' and altura > 1.90 ;




  
    


 



