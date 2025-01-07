-- 1. Tabela: administrador

-- Adicionar Administrador
INSERT INTO administrador (nome_Administrador, email_Administrador, senha, salario, telefone, carga_Horaria, dt_Criacao)
VALUES ('Nome do Administrador', 'email@exemplo.com', 'senha_segura', 5000.00, '1234567890', 40, CURDATE());

-- Deletar Administrador
DELETE FROM administrador WHERE id_Administrador = 1;

-- Atualizar Administrador
UPDATE administrador SET salario = 5500.00 WHERE id_Administrador = 1;

-- Selecionar Administrador
SELECT * FROM administrador WHERE id_Administrador = 1;

-- Selecionar todos os Administradores
SELECT * FROM administrador;

-- Verificar se existe Administrador
SELECT COUNT(*) FROM administrador WHERE email_Administrador = 'email@exemplo.com';

-- 2. Tabela: autor

-- Adicionar Autor
INSERT INTO autor (nome_Autor, email_Autor, senha, n_Publicacoes, classificacao, telefone, dt_Criacao)
VALUES ('Nome do Autor', 'autor@exemplo.com', 'senha_segura', 10, 4.5, '9876543210', CURDATE());

-- Deletar Autor
DELETE FROM autor WHERE id_Autor = 1;

-- Atualizar Autor
UPDATE autor SET n_Publicacoes = 12 WHERE id_Autor = 1;

-- Selecionar Autor
SELECT * FROM autor WHERE id_Autor = 1;

-- Selecionar todos os Autores
SELECT * FROM autor;

-- Adicionar Autor com Publicações
INSERT INTO autor (nome_Autor, email_Autor, senha, n_Publicacoes, classificacao, telefone, dt_Criacao)
VALUES ('Autor Exemplo', 'exemplo@autor.com', 'senha123', 20, 5.0, '1234567890', CURDATE());

-- Atualizar a classificação do Autor
UPDATE autor SET classificacao = 4.8 WHERE id_Autor = 1;

-- Contar o total de Autores
SELECT COUNT(*) FROM autor;

-- Pesquisar Autores por Nome
SELECT * FROM autor WHERE nome_Autor LIKE '%Autor%';

-- 3. Tabela: usuario

-- Adicionar Usuário
INSERT INTO usuario (nome_Usuario, email_Usuario, senha, dt_Criacao)
VALUES ('Nome do Usuário', 'usuario@exemplo.com', 'senha_segura', CURDATE());

-- Deletar Usuário
DELETE FROM usuario WHERE id_Usuario = 1;

-- Atualizar Usuário
UPDATE usuario SET email_Usuario = 'novo_email@exemplo.com' WHERE id_Usuario = 1;

-- Selecionar Usuário
SELECT * FROM usuario WHERE id_Usuario = 1;

-- Selecionar todos os Usuários
SELECT * FROM usuario;

-- Adicionar Novo Usuário
INSERT INTO usuario (nome_Usuario, email_Usuario, senha, dt_Criacao)
VALUES ('Novo Usuário', 'novousuario@exemplo.com', 'senha123', CURDATE());

-- Alterar o Email do Usuário
UPDATE usuario SET email_Usuario = 'usuario_atualizado@exemplo.com' WHERE id_Usuario = 1;

-- Contar o total de Usuários
SELECT COUNT(*) FROM usuario;

-- Pesquisar Usuários por Nome
SELECT * FROM usuario WHERE nome_Usuario LIKE '%Nome%';

-- 4. Tabela: noticia

-- Adicionar Notícia
-- Certifique-se de que o `id_Autor` e o `id_Categoria` existem no banco de dados
INSERT INTO noticia (dt_Publicacao, avalicacao, fonte, img_Url, titulo, conteudo, resumo, id_Autor, id_Categoria)
VALUES (CURDATE(), 4.8, 'Fonte Exemplo', 'http://imagem.com', 'Título da Notícia', 'Conteúdo da notícia...', 'Resumo da notícia...', 1, 1);

-- Deletar Notícia
DELETE FROM noticia WHERE id_Noticia = 1;

-- Atualizar Notícia
UPDATE noticia SET avalicacao = 4.9 WHERE id_Noticia = 1;

-- Selecionar Notícia
SELECT * FROM noticia WHERE id_Noticia = 1;

-- Selecionar todas as Notícias
SELECT * FROM noticia;

-- Alterar o Título da Notícia
UPDATE noticia SET titulo = 'Novo Título' WHERE id_Noticia = 1;

-- Contar o total de Notícias
SELECT COUNT(*) FROM noticia;

-- Pesquisar Notícias por Título
SELECT * FROM noticia WHERE titulo LIKE '%Título%';

-- Filtrar Notícias por Autor
SELECT * FROM noticia WHERE id_Autor = 1;

-- 5. Tabela: comentario

-- Adicionar Comentário
-- Certifique-se de que o `id_Noticia` e `id_Usuario` existem no banco de dados
INSERT INTO comentario (dt_Criacao, conteudo, id_Noticia, id_Usuario)
VALUES (CURDATE(), 'Comentário interessante!', 1, 1);

-- Deletar Comentário
DELETE FROM comentario WHERE id_Comentario = 1;

-- Atualizar Comentário
UPDATE comentario SET conteudo = 'Comentário atualizado!' WHERE id_Comentario = 1;

-- Selecionar Comentário
SELECT * FROM comentario WHERE id_Comentario = 1;

-- Selecionar todos os Comentários
SELECT * FROM comentario;

-- Alterar o Conteúdo do Comentário
UPDATE comentario SET conteudo = 'Novo conteúdo para o comentário' WHERE id_Comentario = 1;

-- Contar o total de Comentários
SELECT COUNT(*) FROM comentario;

-- Pesquisar Comentários por Conteúdo
SELECT * FROM comentario WHERE conteudo LIKE '%comentário%';

-- Filtrar Comentários por Notícia
SELECT * FROM comentario WHERE id_Noticia = 1;

-- 6. Tabela: administrador_autor

-- Adicionar Relação Administrador-Autor
-- Certifique-se de que `id_Administrador` e `id_Autor` existem no banco de dados
INSERT INTO administrador_autor (id_Administrador, id_Autor)
VALUES (1, 1);

-- Deletar Relação Administrador-Autor
DELETE FROM administrador_autor WHERE id_Administrador = 1 AND id_Autor = 1;

-- Selecionar Relação Administrador-Autor
SELECT * FROM administrador_autor WHERE id_Administrador = 1 AND id_Autor = 1;

-- 7. Tabela: administrador_usuario

-- Adicionar Relação Administrador-Usuário
-- Certifique-se de que `id_Administrador` e `id_Usuario` existem no banco de dados
INSERT INTO administrador_usuario (id_Administrador, id_Usuario)
VALUES (1, 1);

-- Deletar Relação Administrador-Usuário
DELETE FROM administrador_usuario WHERE id_Administrador = 1 AND id_Usuario = 1;

-- Selecionar Relação Administrador-Usuário
SELECT * FROM administrador_usuario WHERE id_Administrador = 1 AND id_Usuario = 1;

-- 8. Tabela: administrador_tag

-- Adicionar Relação Administrador-Tag
-- Certifique-se de que `id_Administrador` e `id_Tag` existem no banco de dados
INSERT INTO administrador_tag (id_Administrador, id_Tag)
VALUES (1, 1);

-- Deletar Relação Administrador-Tag
DELETE FROM administrador_tag WHERE id_Administrador = 1 AND id_Tag = 1;

-- Selecionar Relação Administrador-Tag
SELECT * FROM administrador_tag WHERE id_Administrador = 1 AND id_Tag = 1;

-- 9. Tabela: tag

-- Adicionar Tag
INSERT INTO tag (nome_Tag, descricao)
VALUES ('Tag Exemplo', 'Descrição da Tag');

-- Deletar Tag
DELETE FROM tag WHERE id_Tag = 1;

-- Atualizar Tag
UPDATE tag SET descricao = 'Nova descrição' WHERE id_Tag = 1;

-- Selecionar Tag
SELECT * FROM tag WHERE id_Tag = 1;

-- Selecionar todas as Tags
SELECT * FROM tag;

-- 10. Tabela: categoria

-- Adicionar Categoria
INSERT INTO categoria (nome_Categoria, descricao)
VALUES ('Categoria Exemplo', 'Descrição da Categoria');

-- Deletar Categoria
DELETE FROM categoria WHERE id_Categoria = 1;

-- Atualizar Categoria
UPDATE categoria SET descricao = 'Nova descrição' WHERE id_Categoria = 1;

-- Selecionar Categoria
SELECT * FROM categoria WHERE id_Categoria = 1;

-- Selecionar todas as Categorias
SELECT * FROM categoria;

-- 11. Tabela: tag_noticia

-- Adicionar Relação Tag-Notícia
-- Certifique-se de que `id_Tag` e `id_Noticia` existem no banco de dados
INSERT INTO tag_noticia (id_Tag, id_Noticia)
VALUES (1, 1);

-- Deletar Relação Tag-Notícia
DELETE FROM tag_noticia WHERE id_Tag = 1 AND id_Noticia = 1;

-- Selecionar Relação Tag-Notícia
SELECT * FROM tag_noticia WHERE id_Tag = 1 AND id_Noticia = 1;

-- 12. Tabela: administrador_noticia

-- Adicionar Relação Administrador-Notícia
-- Certifique-se de que `id_Administrador` e `id_Noticia` existem no banco de dados
INSERT INTO administrador_noticia (id_Administrador, id_Noticia)
VALUES (1, 1);

-- Deletar Relação Administrador-Notícia
DELETE FROM administrador_noticia WHERE id_Administrador = 1 AND id_Noticia = 1;

-- Selecionar Relação Administrador-Notícia
SELECT * FROM administrador_noticia WHERE id_Administrador = 1 AND id_Noticia = 1;

-- 13. Tabela: administrador_comentario

-- Adicionar Relação Administrador-Comentário
-- Certifique-se de que `id_Administrador` e `id_Comentario` existem no banco de dados
INSERT INTO administrador_comentario (id_Administrador, id_Comentario)
VALUES (1, 1);

-- Deletar Relação Administrador-Comentário
DELETE FROM administrador_comentario WHERE id_Administrador = 1 AND id_Comentario = 1;

-- Selecionar Relação Administrador-Comentário
SELECT * FROM administrador_comentario WHERE id_Administrador = 1 AND id_Comentario = 1;
