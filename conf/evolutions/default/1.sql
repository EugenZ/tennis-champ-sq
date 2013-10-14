# --- First database schema

# --- !Ups

-- set ignorecase true;

create table player (
  id                        bigint not null,
  name		                varchar(128) not null,
  native_name               varchar(128) not null,
  group_id					bigint not null,
  email						varchar(64),
  project					varchar(15),
  username					varchar(15) not null,
  password					varchar(32) not null,
  role_id					bigint not null,
  constraint pk_plaeyr primary key (id))
;

create table standings (
  id						bigint not null,
  primary_group_id			bigint not null,
  secondary_group_id		bigint not null,
  match_time				timestamp not null,
  primary_team_score		bigint,
  secondary_team_score		bigint,
  referee_id				bigint,
  constraint pk_standings primary key (id))
; 

create table team (
  id						bigint not null,
  name						varchar(32) not null,
  constraint pk_team primary key (id))
;

create sequence player_seq start with 1000;

create sequence standings_seq start with 1000;

create sequence team_seq start with 1000;

--alter table standings add constraint fk_standings_player_1 foreign key (primary_group_id) references player (group_id);
--alter table standings add constraint fk_standings_player_2 foreign key (secondary_group_id) references player (group_id);
alter table standings add constraint fk_referee_player foreign key (referee_id) references player (id);
alter table player add constraint fk_player_team foreign key (group_id) references team (id);


# --- !Downs

--SET REFERENTIAL_INTEGRITY FALSE;

--drop table if exists player;

--drop table if exists standings;

--drop table if exists team;

--SET REFERENTIAL_INTEGRITY TRUE;

--drop sequence if exists player_seq;

--drop sequence if exists standings_seq;

--drop sequence if exists team_seq;

