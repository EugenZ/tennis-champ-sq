# --- Sample dataset

# --- !Ups

-- Teams

insert into team (id, name) values(1, 'team 1');
insert into team (id, name) values(2, 'team 2');
insert into team (id, name) values(3, 'team 3');
insert into team (id, name) values(4, 'team 4');
insert into team (id, name) values(5, 'team 5');
insert into team (id, name) values(6, 'team 6');
insert into team (id, name) values(7, 'team 7');
insert into team (id, name) values(8, 'team 8');

-- Players

insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(1, 'Netesanyi Sergii', '', 1, '', 'BO_EXT', 'SNetesanyi', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(2, 'Shestakov Illia', '', 1, '', 'OPS', 'IShestakov', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(3, 'Petrenko Sergii', '', 2, '', 'BO_EXT', 'SPetrenko', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(4, 'Vergun Kirill', '', 2, '', 'SwissID', 'KVergun', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(5, 'Iatsenko Dmytro', '', 3, '', 'BO_EXT', 'DIatsenko', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(6, 'Chantsev Valerii', '', 3, '', 'OPS', 'VChantsev', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(7, 'Pilipenko Yuriy', '', 4, '', 'FOX', 'YPilipenko', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(8, 'Botvynovskyi Dmytro', '', 4, '', 'OPS', 'DBotvynovskyi', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(9, 'Kruk Igor', '', 5, '', 'FOX', 'IKruk', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(10, 'Dementiev Anton', '', 5, '', 'SQ_RISK', 'ADementiev', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(11, 'Davydov Denys', '', 6, '', 'OPS', 'DDavydov', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(12, 'Kutsopalov Dmitriy', '', 6, '', 'OPS', 'DKutsopalov', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(13, 'Zhgirau Yauheni', 'Евгений Жгиров', 7, '', 'OPS', 'ezhgirov', 'test1234', 2);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(14, 'Stonaiev Dmytro', 'Дмитрий Стонаев', 7, '', 'SQ_RISK', 'DStonaiev', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(15, 'Skrypka Ivan', '', 8, '', 'SwissID', 'ISkrypka', 'test123', 1);
insert into player (id, name, native_name, group_id, email, project, username, password, role_id) values(16, 'Fomin Viacheslav', '', 8, '', 'SQ_RISK', 'VFomin', 'test123', 1);

# --- !Downs

delete from player;
delete from standings;
delete from team;
