select * from gafanhotos;
/*ex001*/
select * from gafanhotos
where sexo = 'F';

/*ex002*/
select * from gafanhotos
where nascimento between '2000/01/01' and '2015/12/31' order by nascimento asc;

/*ex003*/
select * from gafanhotos where sexo ='M' and profissao='Programador' order by nome;

/*ex004*/
select *from gafanhotos where sexo ='F' and nacionalidade in ('Brasil') and nome like 'J%';

/*ex005*/
select nome from gafanhotos where sexo ='M' and nome like '%Silva%' and nacionalidade not in ('Brasil') and peso < 100;

/*ex006*/
SELECT nome ,max(altura) from gafanhotos where sexo ='M' and nacionalidade in('Brasil');

/*ex007*/
select avg(peso) from gafanhotos;

/*ex008*/
select nome,nacionalidade,nascimento,min(peso) from gafanhotos
where sexo='F' and nacionalidade not in('Brasil')
and nascimento between '1990/01/01' and '2015/12/31'
order by peso asc;

/*ex009*/
select count(altura) from gafanhotos
where sexo ='F' and altura > 1.90 ;




  
    


 



