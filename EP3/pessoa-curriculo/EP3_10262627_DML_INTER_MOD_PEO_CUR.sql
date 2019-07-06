--oferecimento
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (11, 1,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (12, 2,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (13, 3,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (14, 4,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (15, 5,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (16, 6,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (17, 7,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (18, 8,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (19, 9,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (20,10,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');

--cursa 
--cursos da Alice
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 1, 10.0, 100);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 2, 8.7, 100);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 3, 5.6, 100);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 4, 9.9, 100);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 5, null, null);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 6, null, null);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 7, null, null);
--cursos resto
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (2, 2, 7.0, 80);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (3, 3, 5.0, 70);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (4, 4, 9.5, 91);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (5, 5, 8.2, 80);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (6, 6, 6.3, 70);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (7, 7, 0.0, 0);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (8, 8, 2.1, 0);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (9, 9, 3.3, 40);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (10, 10, 9.3, 100);


--planeja
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (1, 3, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 4, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 5, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (1, 4, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 6, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 7, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (1, 5, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 8, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 9, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (1, 6, '01/01/2020');

--rel_adm_curr
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (19, 1, '01/01/2010', '31/12/2014');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (20, 2, '01/01/2018', '31/12/2020');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (21, 1, '01/01/2010', '31/12/2014');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (22, 2, '01/01/2018', '31/12/2020');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (23, 1, '01/01/2010', '31/12/2014');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (24, 2, '01/01/2018', '31/12/2020');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (25, 1, '01/01/2010', '31/12/2014');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (26, 2, '01/01/2018', '31/12/2020');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (27, 1, '01/01/2010', '31/12/2014');
