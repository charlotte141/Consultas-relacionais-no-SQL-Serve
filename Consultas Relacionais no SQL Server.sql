use Filmes;

/* Buscando o nome e ano dos filmes */ 
select nome, ano from filmes;

/* Buscando o nome e ano dos filmes, ordenados por ordem crescente pelo ano */ 
select nome, ano, duracao from filmes order by Ano;

/* Buscando pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o */
select nome, ano, duracao from filmes where Nome = 'De volta para o Futuro';

/* Buscando os filmes lan�ados em 1997 */
select nome, ano, duracao from filmes where Ano = 1997;

/* Buscando os filmes lan�ados AP�S o ano 2000 */
select nome, ano, duracao from filmes where Ano > 2000;

/* Buscando os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
select nome, ano, duracao from filmes where filmes.Duracao > 100 and Duracao < 150 order by Duracao;

/* Buscando a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
select Ano, count(*) as Quantidade from filmes GROUP BY Ano order by quantidade desc; 

/* Buscando os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome */
select * from Atores where Genero = 'M'; 

/* Buscando os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
select * from Atores where Genero = 'F' order by PrimeiroNome; 

/* Buscando o nome do filme e o g�nero  */
select Filmes.Nome, Generos.Genero from FilmesGenero 
join Filmes on filmes.Id = FilmesGenero.IdFilme 
join Generos on Generos.Id = FilmesGenero.IdGenero;

/* Buscando o nome do filme e o g�nero do tipo "Mist�rio" */
select Filmes.Nome, Generos.Genero from FilmesGenero 
join Filmes on filmes.Id = FilmesGenero.IdFilme 
join Generos on Generos.Id = FilmesGenero.IdGenero 
where Genero = 'Mist�rio';

/* Buscando o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel from ElencoFilme 
join Filmes on filmes.Id = ElencoFilme.IdFilme 
join Atores on Atores.Id = ElencoFilme.IdAtor;