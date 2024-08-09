create database kanye;

use kanye;
create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
emailUsuario varchar(45),
senhaUsuario varchar(45)
);

select * from usuario;

create table quiz (
idQuiz int primary key auto_increment,
acertos int,
erros int,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

create table jogo (
idJogo int primary key auto_increment,
acertos int,
erros int,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

select * from usuario join quiz on idUsuario = fkUsuario;

select * from usuario join jogo on idUsuario = fkUsuario order by erros asc;
select * from quiz;