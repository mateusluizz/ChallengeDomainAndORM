INSERT INTO tb_category(description) VALUES ('Curso');
INSERT INTO tb_category(description) VALUES ('Oficina');

INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Curso de Java', 'Desenvolver uma aplicação Spring Boot', 500.00, 1);
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Oficina de Django', 'Aprimorando consultas com Django ORM', 250.0, 2);

INSERT INTO tb_block(start_Block, end_Block, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-11-28T13:00:00Z', TIMESTAMP WITH TIME ZONE '2020-11-28T17:00:00Z', 1);
INSERT INTO tb_block(start_Block, end_Block, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-11-28T14:30:00Z', TIMESTAMP WITH TIME ZONE '2020-11-28T18:30:00Z', 2);
INSERT INTO tb_block(start_Block, end_Block, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-11-28T18:30:00Z', TIMESTAMP WITH TIME ZONE '2020-11-28T21:30:00Z', 2);

INSERT INTO tb_participant(name, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participant(name, email) VALUES ('Thiago Faria', 'thiago@gmail.com');
INSERT INTO tb_participant(name, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participant(name, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(1, 1);
INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(1, 2);
INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(2, 1);
INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(3, 1);
INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(3, 2);
INSERT INTO tb_activity_participant(participant_id, activity_id) VALUES(4, 2);
