create database banco;
use banco;

create table usuario (
cpf varchar (11) primary key,
email varchar(120) not null,
nome varchar(20) not null,
sobrenome varchar(20) not null,
senha varchar(15) not null,
telefone varchar(15),
cep varchar(15) not null,
endereco varchar(100) not null,
bairro varchar(50) not null,
cidade varchar(50) not  null,
uf varchar(2) not null
);
select * from usuario;

-- INSERT INTO usuario (cpf,email,nome,sobrenome,senha,telefone,cep,endereco,bairoo,cidade,uf) value();

-- drop table imovel;

create table imovel (
id bigint primary key AUTO_INCREMENT, -- used bynary because we'll use uuid here
logradouro varchar(100) not null,
numero varchar (6) not null,
bairro varchar (50) not null,
cidade varchar (50) not null,
estado varchar (20) not null,
cep varchar (15) not null,
tamanho_imovel decimal(10,2) not null,
valor decimal(10,2) not null,
descricao text (500) not null,
condominio decimal(10,2),
iptu decimal(10,2) not null,
quarto integer not null,
banheiro integer not null,
vagas integer not null,
andar integer not null,
mobilia bool not null,
imagem varchar (200)
); 

INSERT INTO imovel (logradouro, numero, bairro, cidade, estado, cep, tamanho_imovel,
valor, descricao, condominio, iptu, quarto, banheiro, vagas, andar, mobilia)
value ('logr', '123', 'bairro', 'cid', 'es', '22323', '213.09', '120.00', 'descri', '21.00', '23.00', 3, 2, 3, 1, false);


/* INSERT INTO imovel (logradouro, numero, bairro, cidade, estado, cep, tamanho_imovel,
valor, descricao, condominio, iptu, quarto, banheiro, vagas, andar, mobilia)
values (@logradouro, @numero, @bairro, @cidade, @estado, @cep, @tamanho_imovel,
@valor, @descricao, @condominio, @iptu, @quarto, @banheiro, @vagas, @andar, @mobilia);
*/ 
select * from imovel;


create table avaliacao (
id bigint primary key AUTO_INCREMENT, -- used bynary because we'll use uuid here
data_criacao datetime default CURRENT_TIMESTAMP,
id_imovel bigint,
id_user varchar(11),
tempo_contrato_meses int,
avaliacao int not null,
motivos varchar (1000),
recomenda_imovel bool not null,
foreign key (id_imovel) references imovel(id),
foreign key (id_user) references usuario(cpf)
);

select * from avaliacao;

insert into avaliacao (id_imovel, id_user, tempo_contrato_meses, avaliacao, motivos, recomenda_imovel) values 
(5, '123', 3, 5, 'lugar é maravilhoso', true);

insert into avaliacao (id_imovel, id_user, tempo_contrato_meses, avaliacao, motivos, recomenda_imovel) values 
(5, '123', 3, 5, 'lugar é lindo', false);

insert into avaliacao (id_imovel, id_user, tempo_contrato_meses, avaliacao, motivos, recomenda_imovel) values 
(5, '123', 3, 5, 'lugar é feio', true);


/* insert into avaliacao (id_imovel, id_user, tempo_contrato_meses, avaliacao, motivos, recomenda_imovel) values 
 (@id_imovel, @id_user, @tempo_contrato_meses, @avaliacao, @motivos, @recomenda_imovel); 
*/ 
 
 
 -- select * from avaliacao where id_imovel = @id_imovel;

select * from imovel;
-- select * from imovel where UPPER(logradouro) like '%OG%';

-- select * from imovel where UPPER(logradouro) like '%@logradouro%';


select * from usuario where cpf = '123' and senha = '1234';

select * from usuario where cpf = '123' and senha = '1234';

-- alter table imovel add column imagem varchar(200);