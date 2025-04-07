
INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');



INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_Uri,img_Gray_Uri) VALUES ('Bootcamp HTML','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer(edition,start_Moment,end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z',1);
INSERT INTO tb_offer(edition,start_Moment,end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z',1);

INSERT INTO tb_notification(text,moment,read,route,user_id) VALUES ('Teste 1',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',false,'Teste1',1);

INSERT INTO tb_resource(title,description, position,img_Uri, type, offer_id) VALUES ('Trilha HTML','Trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',1,1);
INSERT INTO tb_resource(title,description, position,img_Uri, type, offer_id) VALUES ('Forum','Tire suas dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',2,1);
INSERT INTO tb_resource(title,description, position,img_Uri, type, offer_id) VALUES ('Lives','Lives exclusivas para tuma', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',0,1);

INSERT INTO tb_section(title,description, position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 1', 'Introdução ao curso',1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',1,null);
INSERT INTO tb_section(title,description, position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 2', 'Vamos iniciar',2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',1,1);
INSERT INTO tb_section(title,description, position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 3', 'Vamor dar continuidade',3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4kJKLE19b3Veca_E80yM8SBFdVkdaUkSgw&s',1,2);

INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);