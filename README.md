# Banco de Dados
Banco de Dados na Faculdade - (2° Semestre).

## LAB01
Aluno: Eduardo Henrique Fabri
Banco de Dados

Prática 1.1

a) Na ferramenta brModelo, construa o seguinte modelo entidade-relacionamento (MER), para armazenar um conjunto de carros em uma loja de carros usados.

b) Apresente a imagem do seu modelo:	
 
![image](https://github.com/user-attachments/assets/6781757d-0efa-4fa4-8eae-d1a49663796e)

Prática 1.2

a) Ainda na ferramenta brModelo, transforme o modelo entidade-relacionamento (MER) para seu respectivo modelo relacional.

b) Apresente a imagem do seu modelo	 

![image](https://github.com/user-attachments/assets/3393bbdf-8d91-4d0a-8860-d0d1ef93127f)

Prática 1.3

a) Defina os tipos de dados para cada atributo da entidade Carro.

b) Apresente a imagem do seu modelo.	 

![image](https://github.com/user-attachments/assets/7f9f79a7-7c70-4286-8cef-afa06e7ad761)

Prática 1.4

a) Converta o modelo relacional no seu correspondente modelo físico (escreva os comandos SQL DDL).

b) Apresente o código SQL de criação do seu modelo.	 

![image](https://github.com/user-attachments/assets/b9760030-7781-4ae5-b918-8022a3c2a253)

Prática 1.5

a) Utilize o database LAB_01.

b) Crie a tabela do Carro, com o comando SQL DDL obtido no brModelo.

c) Crie um único comando para realizar a INSERÇÃO de 5 carros.

d) Execute o comando para a INSERÇÃO e exiba em uma imagem os registros (linhas) inseridos na tabela Carro com um comando SQL SELECT.

![image](https://github.com/user-attachments/assets/379b1661-4a06-4c76-ba4c-87a514d8950d)


Prática 1.6

a) Crie um comando para realizar a ALTERAÇÃO da cor de um dos seus carros.

b) Crie outro comando para realizar a ALTERAÇÃO do ano de fabricação de um outro carro.

c) Execute os comandos para as ALTERAÇÕES e exiba em uma imagem os registros (linhas) alterados na tabela Carro com um comando SQL SELECT.	 

![image](https://github.com/user-attachments/assets/83bdf122-7ac8-439e-89d0-4a1479918878)

Prática 1.7

a) Crie um comando para realizar a EXCLUSÃO de um dos seus carros.

b) Execute o comando para a EXCLUSÃO e exiba em uma imagem a tabela Carro após a EXCLUSÃO, com um comando SQL SELECT.	

![image](https://github.com/user-attachments/assets/ea81f9d4-861b-4af1-ba7f-c6a2155cdec0)

## LAB02

Prática 2.1

a) Para que serve o comando SQL: USE ?<br>
R: Para indicar/selecionar que o banco de dados que você quer usar é o que vai ser referida junto ao USE.

b) Dê um exemplo de comando DROP para eliminar totalmente o database LAB_02 criado, execute o comando e verifique seu resultado, mostrando a imagem.<br>
R: DROP DATABASE LAB_02;

c) Após eliminar o LAB_02, crie novamente este database para as próximas práticas.

![image](https://github.com/user-attachments/assets/9909fb6d-1d8d-4d76-b0f0-eae889c6a4d6)

Prática 2.2

a) O que significa quando não indicamos que um campo (atributo) é NOT NULL?<br>
R: Quando não usamos o NOT NULL, significa que o campo pode ser vazio ou nulo.

b) Para que serve o comando SQL: ALTER TABLE ... ADD CONSTRAIN?<br>
R: Serve para adicionar uma restrição para a tabela existente.

c) O que significa a restrição de PRIMARY KEY? Para que ela serve na prática?<br>
R: Primary Key significa Chave Primária, ela serve como um identificador único para o campo e não permite que existam valores iguais, também ajuda na hora de fazer buscas com o índice que ela cria.

Prática 2.3

Em sua database de trabalho, execute:
(A) INSERT INTO disciplina VALUES (1, 'Redes', 'Básico de redes de computadores', 4, 3);<br>
SELECT * FROM disciplina;

(B) INSERT INTO disciplina VALUES (1, 'Banco de Dados', NULL, 4, 2);<br>
SELECT * FROM disciplina;

a) Dos comandos passados, que comando não funcionou e como ele foi arrumado?<br>
R: O comando B não funcionou, ele pode ser arrumado com o reajuste do ID_Disciplina, por que já existe uma Primary Key com o mesmo valor.

b) Qual o comando para visualizar as inserções para ver se elas estão corretas?<br>
R: SELECT * FROM DISCIPLINA;

c) Crie e execute um comando para inserir mais 5 registros / linhas na tabela disciplina.
R: <br>
INSERT INTO disciplina VALUES<br>
(2, 'Matemática Aplicada', 'Estudo das aplicações práticas da matemática em diversos campos, incluindo engenharia e ciências sociais.', 4, 4),<br>
(3, 'História da Arte', 'Análise dos principais movimentos artísticos ao longo da história, incluindo o Renascimento, Barroco e Modernismo.', 3, 6),<br>
(4, 'Programação Avançada', 'Aprofundamento em técnicas avançadas de programação, incluindo algoritmos complexos e estruturas de dados.', 5, 1),<br>
(5, 'Economia Internacional', 'Estudo das teorias e práticas da economia global, com foco em comércio, finanças e políticas internacionais.', 4, 12),<br>
(6, 'Psicologia Organizacional', NULL, 3, 3),<br>
(7, 'Bioinformática', 'Aplicação de técnicas de computação para resolver problemas biológicos, incluindo análise de dados genéticos e proteômicos.', 4, 15);   

d) Apresente em uma imagem todos registros inseridos na tabela disciplina.

![image](https://github.com/user-attachments/assets/ec7038d1-6939-4f7c-9ce7-c10267269e9e)

Prática 2.4

a) O que significa AUTO_INCREMENT PRIMARY KEY e para que ela serve?<br>
R: O auto_increment é um atributo que você coloca em uma coluna para que ela ajude o identificador único (primary key) a incrementar automaticamente a cada inserção.

b) O que significa GENERATED ALWAYS AS (SUBSTRING_INDEX(nome, " ", 1)) e para que serve?<br>
R: Generated Always é um atributo derivado que sempre calcula automaticamente com base em uma String. Substring_index é uma função que pega parte de uma String, e o que está dentro do parêntese é (coluna, ‘ ‘, quantidade_de_valores_a_ser_pego) – se for 1, pega somente o primeiro nome, se for 2, pegara os dois nomes...

c) Um atributo derivado é salvo em disco?<br>
R: Não, um atributo derivado não é salvo em disco, um atributo derivado só exibe as consultas que são feitas.

Prática 2.5

a) O que significa STR_TO_DATE('20/02/1985', '%d/%m/%Y’) e para que este comando foi utilizado?<br>
R: o STR_TO_DATE é uma função que faz uma formatação da data para o modelo que você desejar, o comando foi utilizado para converter o formato passado pelo SQL (recebido por 20-02-1985) e convertido para (1985-02-20) dentro da tabela.

b) O que significa AS e para que server? Ele pode ser omitido?<br>
R: O AS é um atributo para seleção que indica COMO você deseja exibir uma coluna dentro da tabela de pesquisa, serve para renomear a coluna de consulta ou para abreviar as tabelas criando apelidos. Pode sim ser omitido, você não precisa do AS para renomear, mas é uma boa pratica embora possa usar o SELECT e O FROM.<br>
Ex:
SELECT nome NomeCompleto FROM Professor;<br>
SELECT p.nome FROM Professor p; 

c) O que o comando TIMESTAMPDIFF(YEAR, dt_nascimento, CURDATE()) está realizando? <br>
R: O timestampdiff é uma função que calcula a diferença da data de nascimento, ele subtrai o ano de dt_nascimento e pega a data atual através do CURDATE(). Ele está determinando a idade da pessoa.

Prática 2.6
a) O que é e para que servem os comandos:<br>
• CHECK (semestre BETWEEN 1 AND 2)<br>
R: O Check é uma restrição que faz uma verificação do campo SEMESTRE, verifica a condição de semestre estar entre 1 e 2, se o valor estiver fora, a linha será rejeitada.<br>
• UNIQUE (ano, semestre, id_discip, id_prof)<br>
R: Faz com que os campos ano, semestre, id_discip e id_prof sejam únicos dentro da própria tabela, é semelhante ao PK, mas permite valores nulos em algumas colunas.<br>

b) Apresente em uma imagem os modelos conceitual (MER) e lógico (relacional) das tabelas Professor, Disciplina e Turma.<br>

# FALTA AQUI

Prática 2.7<br>
a) Nos comandos passados, que comando não funcionou e como ele foi arrumado?<br>
R: Ocorreram 3 erros:<br>

1 - Erro com CONSTRAINT e REFERENCES: O problema aconteceu porque a restrição CONSTRAINT FK_Discip e a referência REFERENCES Disciplina(id_discip) estavam escritas erradas. Para corrigir, mudamos o nome da restrição para FK_Disciplina e ajustamos a coluna referenciada para id_discip. <br>

2 - Erro de UNIQUE: O problema com o Comando C foi que ele tentou inserir dados que violavam a restrição UNIQUE, ou seja, tentou colocar valores repetidos na tabela. Para resolver, a gente só teve que mudar os valores para que fossem únicos e não conflitassem com os já existentes.<br>

3 - Erro de CHECK Constraint: O Comando D não funcionou porque a restrição CK_Sem pedia que o semestre fosse entre 1 e 2. Para arrumar, tivemos que ajustar o valor do semestre ou mudar algum outro atributo para se encaixar nessa regra.<br>

b) Apresente em uma imagem todos registros de cada uma das tabelas Professor, Disciplina e Turma.

![image](https://github.com/user-attachments/assets/ff0a008c-5f67-4fdd-be11-897b2f04ef0b)
![image](https://github.com/user-attachments/assets/9297e7d3-1b32-488a-b506-4bfa6c9613ed)
![image](https://github.com/user-attachments/assets/a337f4c3-18e9-440f-91a5-889c0044bb9d)

c) Apenas vendo o conteúdo das tabelas, escreva que professores lecionam quais disciplinas e
quando.
R: 
Professora Maria: Sem aulas.<br>
Professor José: Redes em 2020, Matemática Aplicada em 2020 e Matemática Aplicada em 2020 também.<br>
Professor Paulo: Matemática Aplicada em 2020 e Redes em 2020.<br>
Professora Ana: Sem aulas.

Prática 2.8<br>
a) Explique cada um dos comandos passados e apresente imagem com seus resultados obtidos.<br>
R: O comando A faz o produto cartesiano das 3 tabelas (turma, prof, disciplina) fazendo com que todos os elementos se liguem a todas as tabelas. <br>
O comando B faz o produto cartesiano com a pk x fk, ordenando as linhas da maneira correta. <br>
O comando C seleciona os professores e suas respectivas aulas e matérias em cada ano onde a turma tem semestre igual a 1. <br>
O comando D seleciona os professores e suas respectivas aulas e matérias em cada ano e ordena a tabela pelo ano da turma de forma crescente e o semestre de forma decrescente.<br>
O comando E seleciona o professor, a disciplina e o ano das matérias dada pelos professores queo nome começa com a letra J.<br>

![image](https://github.com/user-attachments/assets/f00a8a1f-01e0-45d5-b83f-c642df0f32b9)
![image](https://github.com/user-attachments/assets/fab1fc20-c8c5-403c-bf91-cf78b0c7bef8)
![image](https://github.com/user-attachments/assets/59befd29-fadc-4d91-9039-f5c9a07374c3)
![image](https://github.com/user-attachments/assets/9da56e3a-40ae-40a0-ac48-5e6197d73bfe)
![image](https://github.com/user-attachments/assets/77eeddd7-b25d-41f0-baf1-e97a57454b0c)

b) Explique as diferenças entre (A) e (B)<br>
R: O comando A pega o produto cartesiano (faz uma ligação de todos os conjuntos do domínio com todos os conjuntos do contradomínio) e exibe TODOS. O comando B ordena a tabela com a chave primaria e a chave estrangeira (onde t.id_discip = d.id_disciplina e p.id_prof = t.id_prof)

c) Apresente imagem com o diagrama relacional (modelo lógico) por Engenharia Reversa das tabelas Turma, Professor e Disciplina.

![image](https://github.com/user-attachments/assets/c4cdc752-6c66-417e-8588-4de31acdaa7f)

Prática 2.9
a) Nos comandos passados, que comando não funcionou e como ele foi arrumado?<br>
R: O comando A não funcionou, tive que colocar as restrições/constraints abaixo das colunas e não na mesma linha.<br>
O comando C não funcionou corretamente pq inseriu o id_emp e salario de uma pessoa mas sem o nome dela, tive que corrigir dando um update no nome do Colaborador com id = 300. <br>
O comando D, esta com o salario restrito a ser maior de 1000, dando esse comando com o salario < 1000, ele não funcionou e eu tive que alterar para > 1000 para funcionar.

b) Exiba a imagem do conteúdo da tabela com as inserções corrigidas

![image](https://github.com/user-attachments/assets/e1d3e3a1-75cf-48cd-bfcb-b9f3f22f9f97)






