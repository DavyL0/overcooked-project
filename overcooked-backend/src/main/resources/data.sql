INSERT INTO recipes (nome, category, tempo_preparo, porcoes, modo_preparo, data_cadastro) VALUES
                                                                                              ('Espaguete à Carbonara', 'SALGADO', 30, 4, 'Cozinhe o espaguete al dente. Em uma frigideira, frite o bacon até dourar. Misture ovos e queijo parmesão em um bowl. Escorra a massa e misture com o bacon, retire do fogo e adicione a mistura de ovos, mexendo rapidamente. Tempere com pimenta-do-reino e sirva imediatamente.', NOW()),
                                                                                              ('Frango Grelhado com Ervas', 'SALGADO', 45, 2, 'Marine o frango com azeite, alho, tomilho, alecrim e sal por 30 minutos. Aqueça a grelha em fogo médio-alto. Grelhe o frango por 7 minutos de cada lado até dourar e cozinhar completamente. Deixe descansar por 5 minutos antes de servir.', NOW()),
                                                                                              ('Bolo de Chocolate', 'SOBREMESA', 60, 8, 'Pré-aqueça o forno a 180°C. Misture os ingredientes secos. Em outro bowl, bata ovos, açúcar, óleo e leite. Una as misturas e adicione o chocolate derretido. Despeje em forma untada e asse por 40 minutos. Cubra com ganache após esfriar.', NOW()),
                                                                                              ('Suco de Laranja com Gengibre', 'BEBIDA', 10, 2, 'Esprema as laranjas e coe o suco. Rale o gengibre e misture ao suco. Adicione mel a gosto e mexa bem. Sirva gelado com gelo e uma fatia de laranja para decorar.', NOW()),
                                                                                              ('Brigadeiro', 'DOCE', 25, 20, 'Em uma panela, misture o leite condensado, o cacau em pó e a manteiga. Cozinhe em fogo médio, mexendo sempre, até desgrudar do fundo da panela. Deixe esfriar, enrole em bolinhas e passe no granulado.', NOW());

INSERT INTO recipe_ingredients (recipe_id, ingrediente) VALUES
                                                            (1, '400g de espaguete'),
                                                            (1, '200g de bacon em cubos'),
                                                            (1, '4 ovos'),
                                                            (1, '100g de queijo parmesão'),
                                                            (1, 'Pimenta-do-reino a gosto'),

                                                            (2, '2 filés de frango'),
                                                            (2, '3 dentes de alho'),
                                                            (2, 'Tomilho fresco a gosto'),
                                                            (2, 'Alecrim fresco a gosto'),
                                                            (2, '3 colheres de azeite'),

                                                            (3, '2 xícaras de farinha de trigo'),
                                                            (3, '1 xícara de açúcar'),
                                                            (3, '200g de chocolate meio amargo'),
                                                            (3, '3 ovos'),
                                                            (3, '1 xícara de leite'),

                                                            (4, '4 laranjas'),
                                                            (4, '1 pedaço de gengibre'),
                                                            (4, 'Mel a gosto'),
                                                            (4, 'Gelo a gosto'),

                                                            (5, '1 lata de leite condensado'),
                                                            (5, '3 colheres de cacau em pó'),
                                                            (5, '1 colher de manteiga'),
                                                            (5, 'Granulado a gosto');