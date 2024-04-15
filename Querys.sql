use livraria;

describe livro;

select idLivro, titulo, autor, ano, isbn, preco
from livro;

describe cliente;

select nome from cliente 
order by nome;

describe Editora;
describe livro;

select nome as nomeEditora, titulo as tituloLivro
from editora
inner join livro
on livro.idEditora = Editora.idEditora
order by nome desc;

select editora.nome 'Nome_Editora', avg(livro.preco) 'Media_Preco'
from livro
inner join editora
on livro.ideditora = editora.ideditora
group by editora.nome;

describe pedido;

select cliente.nome as Nome_Cliente, count(pedido.idcliente) as Pedido_Cliente 
from pedido
inner join cliente
on pedido.idcliente = cliente.idcliente
group by cliente.nome;

