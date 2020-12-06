
INSERT INTO USUARIO
VALUES ('MarceloTrj', 'senha', 'Marcelo', 'Trajano','07134622200', '8399790710', 'Paraiba', '1111', 'Newton Estilac', 'Alto Branco', 'Campina Grande','Brasil','38401000');
INSERT INTO USUARIO
VALUES ('Tetê', 'senha', 'Terciana', 'C.','07094355523', '3192924631', 'Minas Gerais', '222', 'Jose Targino', 'Tomb', 'Cachoeira','Brasil','35400000');
INSERT INTO USUARIO
VALUES ('Alex', 'senha2', 'Alexsandro', 'Nunes','0343334542', '3196565984', 'Minas Gerais', '33', 'Rua da Forca', 'Morro', 'Ouro Preto','Brasil','35400000','Lá perto do morro');
INSERT INTO USUARIO
VALUES ('Gustalucas', 'senha2', 'Gustavo', 'Lucas','1260538235', '31984104481', 'Minas Gerais', '14', 'Rua Sao Roque', 'Vila Aparecida', 'Mariana','Brasil','35420000','colegio flecha');
INSERT INTO USUARIO
VALUES ('Gabriel01', 'senha123', 'Gabriel', 'Lucas','44331395057', '31965659811', 'Minas Gerais', '14', 'Rua Sao Roque', 'Vila Aparecida', 'Mariana','Brasil','35420000','Proximo a Arena');
INSERT INTO USUARIO
VALUES ('SauloL', 'senha123', 'Saulo', 'Santos Silva','78296242087', '31983818426', 'Minas Gerais', '14', 'Rua Equador', 'Rosario', 'Mariana','Brasil','35420000','Perto da quadra');
INSERT INTO USUARIO
VALUES ('Paulo01', '123456', 'Paulo', 'Marques Silva','98296242087', '31983818429', 'Parana', '352', 'Rua Sapoti', 'Abranches', 'Curitiba','Brasil','81550270','loja do seu ze');
INSERT INTO USUARIO
VALUES ('Valmir01', '1234', 'Valmir', 'Junior','98296242088', '31983818423', 'Minas Gerais', '65', 'Francisco P.', 'Bauxita', 'Ouro Preto','Brasil','35400000','supermecado Lino');
INSERT INTO USUARIO
VALUES ('Paula01', '123', 'Paula', 'Franca','91784770000', '31983818425', 'Minas Gerais', '55', 'Joao da Silva', 'Acurui', 'Itabirito','Brasil','35400000','So perguntar na rua');
INSERT INTO USUARIO
VALUES ('Gisele', '666', 'Gisele', 'Bündchen','74613134013', '31983818456', 'Rio Grande do Sul', '66', 'Top Model', 'Bela Vista', 'Horizontina','Brasil','98920000','Todo mundo conhece');

INSERT INTO CONTA
VALUES ('Médio','1','2','HD','Tetê');
INSERT INTO CONTA
VALUES ('Alta','2','3','FullHD','Alex');
INSERT INTO CONTA
VALUES ('Baixa','3','1','Pixelado','MarceloTrj');
INSERT INTO CONTA 
VALUES ('Media','4','3','FullHD','Gustalucas');
INSERT INTO CONTA 
VALUES ('Alta','5','2','HD','Gabriel01');
INSERT INTO CONTA 
VALUES ('Baixa','6','1','Pixelado','SauloL');
INSERT INTO CONTA 
VALUES ('Media','7','1','FullHD','Paulo01');
INSERT INTO CONTA 
VALUES ('Media','8','3','FullHD','Valmir01');
INSERT INTO CONTA 
VALUES ('Baixa','9','3','FullHD','Paula01');
INSERT INTO CONTA 
VALUES ('Alta','10','3','FullHD','Gisele');

INSERT INTO TEMCONTA
VALUES ('1','Tetê');
INSERT INTO TEMCONTA
VALUES ('2','Alex');
INSERT INTO TEMCONTA
VALUES ('3','MarceloTrj');
INSERT INTO TEMCONTA
VALUES ('4','Gustalucas');
INSERT INTO TEMCONTA
VALUES ('5','Gabriel01');
INSERT INTO TEMCONTA
VALUES ('6','SauloL');
INSERT INTO TEMCONTA
VALUES ('7','Paulo01');
INSERT INTO TEMCONTA
VALUES ('8','Valmir01');
INSERT INTO TEMCONTA
VALUES ('9','Paula01');
INSERT INTO TEMCONTA
VALUES ('10','Gisele');

INSERT INTO PAGAMENTO
	VALUES ('15/12/2021','40','83912','Alex');

INSERT INTO CARTAO
	VALUES ('master','55522','191','Alexsandro N.','Crédito','15/10/2021','83912');

INSERT INTO EHUMCARTAO
	VALUES ('839012jdasu91','123','83912','55522');

INSERT INTO PAGAMENTO
	VALUES ('15/12/2019','30','44333','Tetê');

INSERT INTO BOLETO
	VALUES ('07094355523','15/12/2019','6656','44333');
INSERT INTO PAGAMENTO
	VALUES ('15/12/2019','30','44332','Paulo01');
INSERT INTO BOLETO
	VALUES ('98296242087','15/12/2019','6657','44332');
INSERT INTO PAGAMENTO
	VALUES ('15/12/2019','30','44331','Valmir01');
INSERT INTO BOLETO
	VALUES ('98296242088','15/12/2019','6658','44331');
INSERT INTO PAGAMENTO
	VALUES ('15/12/2019','30','44330','Paula01');
INSERT INTO BOLETO
	VALUES ('91784770000','15/12/2019','6659','44330');
INSERT INTO PAGAMENTO
	VALUES ('15/12/2019','30','44329','Gisele');
INSERT INTO BOLETO
	VALUES ('74613134013','15/12/2019','6660','44329');

INSERT INTO PAGAMENTO
	VALUES ('30/12/2019','0','3333','MarceloTrj');

INSERT INTO VOUCHER
	VALUES ('30 dias','3333');
INSERT INTO PAGAMENTO
	VALUES ('30/12/2019','0','3334','Gustalucas');
INSERT INTO VOUCHER
	VALUES ('30 dias','3334');
INSERT INTO PAGAMENTO
	VALUES ('30/12/2019','0','3335','Gabriel01');
INSERT INTO VOUCHER
	VALUES ('30 dias','3335');
INSERT INTO PAGAMENTO
	VALUES ('30/12/2019','0','3336','SauloL');
INSERT INTO VOUCHER
	VALUES ('30 dias','3336');

INSERT INTO CONTEUDO
	VALUES ('Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal',
		'A Sociedade do Anel','12','2001','2002','3:48');
INSERT INTO CONTEUDO
	VALUES ('Frodo e Sam seguem sua jornada rumo à Montanha da Perdição para destruir o anel e descobrem que estão sendo perseguidos pelo misterioso Gollum.',
		'As Duas Torres','12','2002','2002','3:55');
INSERT INTO CONTEUDO
	VALUES ('O confronto final entre as forças do bem e do mal que lutam pelo controle do futuro da Terra Média se aproxima. Sauron planeja um grande ataque a Minas Tirith, capital de Gondor.',
		'O Retorno do Rei','12','2003','2003','3:20');
INSERT INTO CONTEUDO		
	VALUES ('Para ir de mal a pior, a Família Addams precisa se preparar para receber uma visita de parentes ainda mais arrepiantes..','Familia Adams','10','2018','2019','1:27');
INSERT INTO CONTEUDO
	VALUES(' Elas precisam impedir que um novo programa de energia se torne uma ameaça para a humanidade e descobrir quem está por trás de um plano tão maligno.','As Panteras','15','2017','2019','1:59');
 
INSERT INTO CONTEUDO
	VALUES('Mike Banning (Gerard Butler) vê sua vida mudar completamente da noite para o dia ao ser acusado de conspirar para o assassinato do presidente dos Estados Unidos. ','Invasão ao serviço secreto.','14','2019','2019','2:01');
INSERT INTO CONTEUDO
	VALUES('Em uma terra onde os verões podem durar vários anos e o inverno toda uma vida, as reivindicações e as forças sobrenaturais correm as portas do Reino dos Sete Reinos.','Game of Trhones','17','2011','2011','5:30');
INSERT INTO CONTEUDO
	VALUES('Pray the Devil Back to Hell é um documentário que retrata o Movimento pela Paz na Libéria, organizado pela assistente social Leymah Gbowee. ','Pray the Devil Back to Hell','18','2008','2009','2:04');
INSERT INTO CONTEUDO
	VALUES('Da aclamada diretora iraniana Rakhshan Bani Etemad, este documentário explora os esforços das mulheres iranianas para empoderamento focando na eleição de 2002.','Our Times','18','2002','2003', '2:15');

INSERT INTO FILME
	VAlUES (1);
INSERT INTO ROTEIRISTAFILME
	VALUES('Peter Jackson',1);
INSERT INTO ROTEIRISTAFILME
	VALUES('Philipa Boyens',1);
INSERT INTO ROTEIRISTAFILME
	VALUES('Fran Walsh',1);
INSERT INTO ROTEIRISTAFILME
	VALUES('J. R. R. Tolkien',1);

INSERT INTO FILME
	VAlUES (2);
INSERT INTO ROTEIRISTAFILME
	VALUES('Peter Jackson',2);
INSERT INTO ROTEIRISTAFILME
	VALUES('Philipa Boyens',2);
INSERT INTO ROTEIRISTAFILME
	VALUES('Fran Walsh',2);
INSERT INTO ROTEIRISTAFILME
	VALUES('Stephen Sinclair',2);
INSERT INTO ROTEIRISTAFILME
	VALUES('J. R. R. Tolkien',2);

INSERT INTO FILME
	VAlUES (3);
INSERT INTO ROTEIRISTAFILME
	VALUES('Peter Jackson',3);
INSERT INTO ROTEIRISTAFILME
	VALUES('Philipa Boyens',3);
INSERT INTO ROTEIRISTAFILME
	VALUES('Fran Walsh',3);
INSERT INTO ROTEIRISTAFILME
	VALUES('J. R. R. Tolkien',3);


INSERT INTO IDIOMA
	VALUES('Brasil','Português');
INSERT INTO IDIOMA
	VALUES('EUA','Inglês');
INSERT INTO IDIOMA
	VALUES('França','Francês');
INSERT INTO IDIOMA
	VALUES('Espanha','Espanhol');
INSERT INTO IDIOMA
	VALUES ('Canada','Inglês');
INSERT INTO IDIOMA
	VALUES ('Canada','Francês');

INSERT INTO POSSUIIDIOMA
	VALUES(1,'Brasil','Português');
INSERT INTO POSSUIIDIOMA
	VALUES(1,'EUA','Inglês');
INSERT INTO POSSUIIDIOMA
	VALUES(2,'Brasil','Português');
INSERT INTO POSSUIIDIOMA
	VALUES(2,'EUA','Inglês');
INSERT INTO POSSUIIDIOMA
	VALUES(3,'Brasil','Português');
INSERT INTO POSSUIIDIOMA
	VALUES(3,'EUA','Inglês');
INSERT INTO POSSUIIDIOMA
	VALUES(3,'França','Francês');
INSERT INTO POSSUIIDIOMA
	VALUES(3,'Espanha','Espanhol');

INSERT INTO ATOR
	VALUES('Norte-Americano','M','Elijah Wood','28/01/1981');
INSERT INTO ATOR
	VALUES('Britânico','M','Ian McKellen','25/05/1939');
INSERT INTO ATOR
	VALUES('Britânico','M','Orlando Bloom','13/01/1977');
INSERT INTO ATOR
	VALUES('Norte-Americano','M','Sean Astin','25/02/1971');
INSERT INTO ATOR
	VALUES('Dinamarquês','M','Viggo Mortensen','20/10/1958');
INSERT INTO ATOR
	VALUES('Sul-Africana','F','CHARLIZE THERON','7/8/1975');
INSERT INTO ATOR
	VALUES('Guatamalteca','M','Oscar Isaac Hernandez','9/03/1979');
INSERT INTO ATOR
	VALUES('Americana','F','Kristen Jaymes Stewart','9/04/1990');
INSERT INTO ATOR
	VALUES('Americano','M','Morgan Freeman','1/06/1937');
INSERT INTO ATOR
	VALUES('Britanico','M','Kit Harington ','26/12/1986');

INSERT INTO ATUA
	VALUES('Frodo','50',1,1);
INSERT INTO ATUA
	VALUES('Frodo','51',1,2);
INSERT INTO ATUA
	VALUES('Frodo','52',1,3);
INSERT INTO ATUA
	VALUES('Galdalf','1000',2,1);
INSERT INTO ATUA
	VALUES('Galdalf','1001',2,2);
INSERT INTO ATUA
	VALUES('Galdalf','1002',2,3);
INSERT INTO ATUA
	VALUES('Legolas','600',3,1);
INSERT INTO ATUA
	VALUES('Legolas','601',3,2);
INSERT INTO ATUA
	VALUES('Legolas','602',3,3);
INSERT INTO ATUA
	VALUES('Sam','60',4,1);
INSERT INTO ATUA
	VALUES('Sam','61',4,2);
INSERT INTO ATUA
	VALUES('Sam','62',4,3);
INSERT INTO ATUA
	VALUES('Aragorn','87',5,1);
INSERT INTO ATUA
	VALUES('Aragorn','88',5,2);
INSERT INTO ATUA
	VALUES('Aragorn','89',5,3);
INSERT INTO ATUA
	VALUES('Morticia Addams','45',6,4);
INSERT INTO ATUA
	VALUES('Gomez Addams','50',7,4);
INSERT INTO ATUA
	VALUES('Sabina Wilson','30',8,5);
INSERT INTO ATUA
	VALUES('President Allan Trumbull','70',9,6);
INSERT INTO ATUA
	VALUES('Jon Snow','35',10,7);
INSERT INTO DOCUMENTARIO
	VALUES(8);
INSERT INTO DOCUMENTARIO
	VALUES(9);
INSERT INTO ROTEIRISTADOCUMENTARIO
	VALUES('Gini Reticker',8);
INSERT INTO ROTEIRISTADOCUMENTARIO
	VALUES('Abigail Disney',8);
INSERT INTO ROTEIRISTADOCUMENTARIO
	VALUES('Rakhshan Bani Etemad',9);

INSERT INTO TEMPORADA
	VALUES('10','4','Temporada 4');
INSERT INTO TEMPORADA
	VALUES(	'10','2','temporada 2');
INSERT INTO TEMPORADA
	VALUES('7','7','temporada 7'); 

INSERT INTO EPISODIO
 	VALUES('the Dragon and the wolf','7','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('Beyond the wall','6','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('Eastwatch','5','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('the Spoils of war','4','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('the queens Justice','3','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('Stormborn','2','7','7','temporada 7');
INSERT INTO EPISODIO
 	VALUES('Dragonstone','1','7','7','temporada 7');
--diretor(estilo(estilo de filme do diretor),sexo(M ou F),nacionalidade(VARCHAR),nome(nome do diretor),
--id(não precisa colocar - serial))
INSERT INTO DIRETOR
	VALUES('fantasia','M','neozelandês','Peter Jackson‎');
INSERT INTO DIRETOR
	VALUES('Animaçao','M','Americano','Conrad Vernon');
INSERT INTO DIRETOR
	VALUES('Animaçao','M','Irlandes','Greg Tiernan');
INSERT INTO DIRETOR
	VALUES('Açao','F','Americana','Elizabeth Maresal Mitchell');
INSERT INTO DIRETOR
	VALUES('Ação','M','Americano','Ric Roman Waugh');

INSERT INTO DIRIGE
	VALUES('1','1');
INSERT INTO DIRIGE
	VALUES('1','2'); 
INSERT INTO DIRIGE
	VALUES ('1','3');
INSERT INTO DIRIGE
	VALUES(2,4);
INSERT INTO DIRIGE
	VALUES(3,4);
INSERT INTO DIRIGE
	VALUES(4,5);
INSERT INTO DIRIGE
	VALUES(5,6);

INSERT INTO GENERO
	VALUES ('Fantasia');
INSERT INTO GENERO
	VALUES ('Comedia');

INSERT INTO GENERO
	VALUES('Ação');
INSERT INTO GENERO
	VALUES('Animação');
INSERT INTO GENERO
	VALUES('Romance');
INSERT INTO GENERO
	VALUES('Suspense');

INSERT INTO TEMUMGENERO
	VALUES ('Fantasia',1);
INSERT INTO TEMUMGENERO
	VALUES ('Fantasia',2);
INSERT INTO TEMUMGENERO
	VALUES ('Fantasia',3);
INSERT INTO TEMUMGENERO
	VALUES('Comedia','4');
INSERT INTO TEMUMGENERO
	VALUES('Ação',5);
INSERT INTO TEMUMGENERO
	VALUES('Ação',6);
INSERT INTO TEMUMGENERO
	VALUES('Fantasia',7);