-- Inserir Receita 1: Brigadeiro Gourmet
INSERT INTO recipes (id, nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro)
VALUES (1, 'Brigadeiro Gourmet', 'DOCE', 30, 20, '1. Numa panela, misture o leite condensado, a manteiga e o chocolate em pó.\n2. Leve ao lume brando, mexendo sempre até desgrudar do fundo da panela.\n3. Deixe arrefecer, faça pequenas bolas e passe-as no granulado.', CURRENT_TIMESTAMP());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (1, '1 lata de leite condensado'),
                                                            (1, '1 colher de sopa de manteiga'),
                                                            (1, '3 colheres de sopa de chocolate em pó'),
                                                            (1, 'Granulado de chocolate para confeitar');


-- Inserir Receita 2: Coxinha de Frango
INSERT INTO recipes (id, nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro)
VALUES (2, 'Coxinha de Frango Tradicional', 'SALGADO', 60, 15, '1. Ferva o caldo de galinha com a manteiga. Adicione a farinha de uma só vez e mexa vigorosamente até soltar da panela.\n2. Sove a massa ainda morna sobre uma bancada.\n3. Abra pequenas porções da massa, recheie com o frango, molde em formato de coxinha, passe no ovo, no pão ralado e frite em óleo quente.', CURRENT_TIMESTAMP());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (2, '4 chávenas de farinha de trigo'),
                                                            (2, '4 chávenas de caldo de galinha'),
                                                            (2, '500g de peito de frango desfiado e temperado'),
                                                            (2, '1 colher de sopa de manteiga');


-- Inserir Receita 3: Sumo de Abacaxi com Hortelã
INSERT INTO recipes (id, nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro)
VALUES (3, 'Sumo de Abacaxi com Hortelã', 'BEBIDA', 10, 4, '1. No liquidificador, junte todos os ingredientes.\n2. Bata bem até obter uma mistura homogénea.\n3. Coe se preferir e sirva imediatamente com cubos de gelo.', CURRENT_TIMESTAMP());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (3, '1 abacaxi descascado e cortado em cubos'),
                                                            (3, '10 folhas de hortelã fresca'),
                                                            (3, '1 litro de água fria'),
                                                            (3, 'Açúcar ou adoçante a gosto');


-- Inserir Receita 4: Pudim de Leite Condensado
INSERT INTO recipes (id, nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro)
VALUES (4, 'Pudim de Leite Condensado', 'SOBREMESA', 50, 8, '1. Derreta o açúcar diretamente na forma de pudim até virar um caramelo dourado.\n2. Bata o leite condensado, o leite e os ovos no liquidificador durante 3 minutos.\n3. Despeje a mistura na forma e leve ao forno em banho-maria (180°C) por cerca de 45 a 50 minutos.', CURRENT_TIMESTAMP());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (4, '1 lata de leite condensado'),
                                                            (4, '1 lata de leite (use a mesma medida da lata)'),
                                                            (4, '3 ovos inteiros'),
                                                            (4, '1 chávena de açúcar para a calda');


-- Inserir Receita 5: Pão de Queijo Mineiro
INSERT INTO recipes (id, nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro)
VALUES (5, 'Pão de Queijo Mineiro', 'SALGADO', 40, 25, '1. Ferva o leite, o óleo e o sal. Use esta mistura a ferver para escaldar o polvilho numa tigela.\n2. Deixe a massa arrefecer um pouco, adicione os ovos um a um e o queijo ralado, amassando bem com as mãos.\n3. Faça pequenas bolas, coloque numa assadeira e leve ao forno pré-aquecido a 200°C por 25 minutos.', CURRENT_TIMESTAMP());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (5, '500g de polvilho azedo'),
                                                            (5, '1 chávena de leite'),
                                                            (5, '1/2 chávena de óleo'),
                                                            (5, '3 ovos médios'),
                                                            (5, '200g de queijo meia cura ralado'),
                                                            (5, '1 colher de chá de sal');


-- Atualizar a sequência do ID no H2 para que os próximos cadastros via sistema comecem a partir do número 6
ALTER TABLE recipes ALTER COLUMN id RESTART WITH 6;