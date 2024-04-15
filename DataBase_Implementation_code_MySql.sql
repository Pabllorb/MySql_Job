CREATE DATABASE livraria;
use livraria;
CREATE TABLE Cliente(
idCliente int NOT NULL,
nome varchar(50) NOT NULL,
telefone varchar(20)NOT NULL,
email varchar(50) NOT NULL,
endereco varchar(100) NOT NULL,
CONSTRAINT PK_Cliente PRIMARY KEY Cliente(idCliente)
);
CREATE TABLE Pedido(
idPedido int NOT NULL,
idCliente int NOT NULL,
dataPedido date NOT NULL,
valorPedido decimal(5,2) NOT NULL,
CONSTRAINT PK_Pedido PRIMARY KEY Pedido(idPedido),
CONSTRAINT pedidoCliente_FK FOREIGN KEY (idCliente) references cliente(idCliente)
);
CREATE TABLE Editora(
idEditora int NOT NULL,
nome varchar(50) NOT NULL,
telefone varchar(20) NOT NULL,
email varchar(50) NOT NULL,
endereco varchar(100) NOT NULL,
CONSTRAINT PK_Editora PRIMARY KEY Editora(idEditora)
);
CREATE TABLE Livro(
idLivro int NOT NULL,
idEditora int NOT NULL,
titulo varchar(100) NOT NULL,
autor varchar(50) NOT NULL,
ano int NOT NULL,
ISBN varchar(20) NOT NULL,
preco decimal(5,2) NOT NULL,
CONSTRAINT PK_Livro PRIMARY KEY Livro(idLivro),
CONSTRAINT editoraLivro_FK FOREIGN KEY (idEditora) references editora(idEditora)
);

CREATE TABLE ItemPedido(
idPedido int NOT NULL,
idLivro int NOT NULL,
quantidade int NOT NULL,
valorItemPedido decimal(5,2) NOT NULL,
CONSTRAINT pedido_ItemPedido_FK FOREIGN KEY (idPedido) references Pedido(idPedido),
CONSTRAINT livro_ItemPedido_FK FOREIGN KEY (idLivro) references Livro(idLivro)
);
CREATE TABLE Estoque(
idLivro int NOT NULL,
quantidade int NOT NULL,
CONSTRAINT livroEstoque_FK FOREIGN KEY (idLivro) references livro(idLivro)
);