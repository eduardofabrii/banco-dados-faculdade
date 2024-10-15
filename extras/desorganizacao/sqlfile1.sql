create table pessoas_assiste_curso (
	id int not null auto_increment primary key,
	data date,
	idpessoas int,
	idcurso int,
	foreign key (idpessoas) references pessoas(id),
	foreign key (idcurso) references cursos(idcurso)
) default charset = utf8mb4;

select * from pessoas;
select * from cursos;
select * from pessoas_assiste_curso;

insert into pessoas_assiste_curso values (DEFAULT, '2014-03-01', '1', '2');

select p.nome, c.nome from pessoas p
join pessoas_assiste_curso a
on p.id = a.idpessoas
join cursos c
on c.idcurso = a.idcurso
order by p.nome;

