CREATE TABLE Conteudo
(
	Sinopse VARCHAR(200) NOT NULL,
	Titulo VARCHAR(50) NOT NULL,
	ClassificacaoIndicativa Integer NOT NULL,
	AnoProducao Integer NOT NULL,
	AnoLancamento Integer NOT NULL,
	Duracao TIME NOT NULL,
	id serial PRIMARY KEY
);

CREATE TABLE Diretor
(
	Estilo VARCHAR(50) NOT NULL,
	Sexo CHAR NOT NULL,
	Nacionalidade VARCHAR(50) NOT NULL,
	Nome VARCHAR (50) NOT NULL,
	id serial PRIMARY KEY
);

CREATE TABLE Ator
(
	Nacionalidade VARCHAR (50) NOT NULL,
	Sexo CHAR NOT NULL,
	NomeArtistico VARCHAR (100) NOT NULL,
	DataNascimento DATE NOT NULL,
	id serial PRIMARY KEY
);

CREATE TABLE Genero
(
	Nome VARCHAR (50) NOT NULL,
	CONSTRAINT PK_NomeGenero PRIMARY KEY (Nome)
);

CREATE TABLE Idioma
(
	PaisOrigem VARCHAR (15) NOT NULL,
	Nome VARCHAR (15) NOT NULL,
	CONSTRAINT PK_NomeIdioma PRIMARY KEY (PaisOrigem,Nome)

);

CREATE TABLE Usuario
(
	Login VARCHAR(15) NOT NULL,
	Senha VARCHAR (15) NOT NULL,
	PrimeiroNome VARCHAR (10) NOT NULL,
	Sobrenome VARCHAR (30) NOT NULL,
	CPF CHAR (11) NOT NULL,
	Telefone VARCHAR (15) NOT NULL,
	Estado VARCHAR(20), 
    Numero Integer, 
    Logradouro VARCHAR(20),  
    Bairro VARCHAR(20),  
    Cidade VARCHAR(20),
	Pais VARCHAR (20),
    CEP VARCHAR(8),  
    Complemento VARCHAR(20),
	CONSTRAINT PK_Login PRIMARY KEY (Login)
);

CREATE TABLE Conta
(
	Tipo VARCHAR (10) NOT NULL,
	Numero Integer NOT NULL,
	QtdTelas Integer NOT NULL,
	Qualidade VARCHAR (10) NOT NULL,
	LoginUsuario VARCHAR (15) NOT NULL,
	CONSTRAINT PK_NumeroConta PRIMARY KEY (Numero),
	CONSTRAINT FK_Login FOREIGN KEY (LoginUsuario)
		REFERENCES Usuario (Login)
	ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Pagamento
(
	DataFechamento DATE NOT NULL,
	Valor Integer NOT NULL,
	NumeroFatura Integer NOT NULL,
	CONSTRAINT PK_Numero PRIMARY KEY (NumeroFatura)

);

CREATE TABLE Voucher
(
	PeriodoDeUso VARCHAR (10) NOT NULL,
	NumeroFaturaPagamento Integer NOT NULL,
	id serial PRIMARY KEY,
	CONSTRAINT FK_NumeroFatura FOREIGN KEY (NumeroFaturaPagamento)
		REFERENCES Pagamento (NumeroFatura)
	ON DELETE RESTRICT ON UPDATE CASCADE
	
);

CREATE TABLE Boleto
(
	CPF CHAR (11) NOT NULL,
	Vencimento DATE NOT NULL,
	CodigoBarras INTEGER NOT NULL,
	NumeroFaturaPagamento Integer NOT NULL,
	CONSTRAINT PK_CodigoBarras PRIMARY KEY (CodigoBarras),
	CONSTRAINT FK_NumeroFatura FOREIGN KEY (NumeroFaturaPagamento)
		REFERENCES Pagamento (NumeroFatura)
	ON DELETE RESTRICT ON UPDATE CASCADE
	
);

CREATE TABLE Cartao
(
	Bandeira VARCHAR (15) NOT NULL,
	NumeroCartao INTEGER NOT NULL,
	CodigoSeguranca INTEGER NOT NULL,
	Nome VARCHAR (15) NOT NULL,
	Tipo VARCHAR (10) NOT NULL,
	Validade DATE NOT NULL,
	NumeroFaturaPagamento Integer NOT NULL,
	CONSTRAINT PK_NumeroCartao PRIMARY KEY (NumeroCartao),
	CONSTRAINT FK_NumeroFatura FOREIGN KEY (NumeroFaturaPagamento)
		REFERENCES Pagamento (NumeroFatura)
	ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Documentario
(
	idConteudo INTEGER NOT NULL,
	CONSTRAINT PK_IDConteudo PRIMARY KEY (idConteudo),
	CONSTRAINT FK_IDConteudo FOREIGN KEY (idConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RoteiristaDocumentario
(
	Roteirista VARCHAR (100) NOT NULL,
	idConteudoRoteirista INTEGER NOT NULL,
	CONSTRAINT PK_CHAVE PRIMARY KEY (Roteirista, idConteudoRoteirista),
	CONSTRAINT FK_IdConteudoRoteiristaDoc FOREIGN KEY (idConteudoRoteirista)
		REFERENCES Documentario(idConteudo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Filme
(
	idConteudo INTEGER NOT NULL,
	CONSTRAINT PK_IDConteudoFilme PRIMARY KEY (idConteudo),
	CONSTRAINT FK_IDConteudo FOREIGN KEY (idConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RoteiristaFilme
(
	Roteirista VARCHAR (100) NOT NULL,
	idConteudoRoteirista INTEGER NOT NULL,
	CONSTRAINT PK_ChaveFilme PRIMARY KEY (Roteirista, idConteudoRoteirista),
	CONSTRAINT FK_IdConteudoRoteiristaFilme FOREIGN KEY (idConteudoRoteirista)
		REFERENCES Filme(idConteudo)
	ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE Episodio
(
	nome VARCHAR (50) NOT NULL,
	numeroEpisodio INTEGER NOT NULL,
	idConteudo INTEGER NOT NULL,
	CONSTRAINT PK_IDConteudoEpisodio PRIMARY KEY (idConteudo,numeroEpisodio),
	CONSTRAINT FK_IDConteudo FOREIGN KEY (idConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE Temporada
(
	qtdEpisodios INTEGER NOT NULL,
	numero INTEGER NOT NULL,
	nomeTemporada VARCHAR (50) NOT NULL,
	CONSTRAINT PK_ChaveTemp PRIMARY KEY (numero, nomeTemporada)


);

CREATE TABLE TemUmGenero
(
	nomeGenero VARCHAR (50) NOT NULL,
	idConteudo Integer NOT NULL,
	CONSTRAINT PK_NomeTemGenero PRIMARY KEY (nomeGenero,IdConteudo),
	CONSTRAINT FK_NomeTemGenero FOREIGN KEY (nomeGenero)
		REFERENCES Genero (nome)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_IDConteudo FOREIGN KEY (IdConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE
	
);

CREATE TABLE Dirige
(
	idDiretor Integer NOT NULL,
	idConteudo Integer NOT NULL,
	CONSTRAINT PK_NomeDirige PRIMARY KEY (idDiretor,IdConteudo),
	CONSTRAINT FK_NomeDirige FOREIGN KEY (idDiretor)
		REFERENCES Diretor (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_IDConteudoD FOREIGN KEY (IdConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE
	
);

CREATE TABLE Atua
(
	nomePersonagem VARCHAR (50) NOT NULL,
	idadePersonagem Integer NOT NULL,
	idAtor Integer NOT NULL,
	idConteudo Integer NOT NULL,
	CONSTRAINT PK_Atua PRIMARY KEY (idAtor,IdConteudo),
	CONSTRAINT FK_IdAtua FOREIGN KEY (idAtor)
		REFERENCES Ator (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_IDConteudoA FOREIGN KEY (IdConteudo)
		REFERENCES Conteudo (id)
	ON DELETE CASCADE ON UPDATE CASCADE
	
);

CREATE TABLE TemConta
(
	numeroConta Integer NOT NULL,
	loginUsuario VARCHAR (15) NOT NULL,
	CONSTRAINT PK_TemConta PRIMARY KEY (numeroConta,loginUsuario),
	CONSTRAINT FK_numeroTemConta FOREIGN KEY (numeroConta)
		REFERENCES Conta (Numero)
	ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT FK_LoginUsuario FOREIGN KEY (loginUsuario)
		REFERENCES Usuario (login)
	ON DELETE RESTRICT ON UPDATE CASCADE


);

CREATE TABLE PossuiIdioma
(
	idConteudo Integer NOT NULL,
	paisIdioma VARCHAR (15) NOT NULL,
	nomeIdioma VARCHAR (15) NOT NULL,
	CONSTRAINT PK_PossuiIdioma PRIMARY KEY (idConteudo,paisIdioma,nomeIdioma),
	CONSTRAINT FK_PossuiIdConteudo FOREIGN KEY (idConteudo)
		REFERENCES Conteudo (Id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_PossuiNomeIdioma FOREIGN KEY (paisIdioma,nomeIdioma)
		REFERENCES Idioma (PaisOrigem,nome)
	ON DELETE CASCADE ON UPDATE CASCADE


);

CREATE TABLE AssisteConteudo
(
	idConteudo Integer NOT NULL,
	loginUsuario VARCHAR (15) NOT NULL,
	CONSTRAINT PK_AssisteConteudo PRIMARY KEY (idConteudo, loginUsuario),
	CONSTRAINT FK_AssisteIdConteudo FOREIGN KEY (idConteudo)
		REFERENCES Conteudo (Id)
	ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT FK_AssisteLogin FOREIGN KEY (loginUsuario)
		REFERENCES Usuario (login)
	ON DELETE RESTRICT ON UPDATE CASCADE


);

CREATE TABLE EhumCartao
(

	Comprovante VARCHAR (30) NOT NULL,
	idTransacao Integer NOT NULL,
	numeroFatura Integer NOT NULL,
	numeroCartao Integer NOT NULL,
	CONSTRAINT PK_EhUmCartao PRIMARY KEY (numeroFatura, numeroCartao),
	CONSTRAINT FK_EhUmPagamento FOREIGN KEY (numeroFatura)
		REFERENCES Pagamento (numeroFatura)
	ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT FK_EhUmCartao FOREIGN KEY (numeroCartao)
		REFERENCES Cartao (numeroCartao)
	ON DELETE RESTRICT ON UPDATE CASCADE


);


ALTER TABLE Episodio
	ADD numeroTemporada Integer NOT NULL,
	ADD nomeTemporada VARCHAR (50),
	ADD CONSTRAINT FK_ChaveTempEp FOREIGN KEY (numeroTemporada,nomeTemporada)
			REFERENCES Temporada (numero, nomeTemporada)
	ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Pagamento
	ADD loginUsuario VARCHAR(15) NOT NULL,
	ADD CONSTRAINT FK_LoginUsuario FOREIGN KEY (loginUsuario)
			REFERENCES Usuario (login)
	ON DELETE RESTRICT ON UPDATE CASCADE;
