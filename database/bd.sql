create database txt_infos;

use txt_infos;

create table tbl_album(
id int not null auto_increment primary key,
nome varchar(80) not null,
data_lancamento date not null,
foto_capa varchar(200) not null,
lingua varchar(10),

unique key (id),
unique index (id)
);

insert into tbl_album (nome, data_lancamento, foto_capa) values
('The Dream Chapter: Star', '2019-03-04', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/The_Dream_Chapter_Star.png');

create table tbl_musica(
id int not null auto_increment primary key,
nome varchar(80) not null,
letra text not null,
duracao time not null,
foto_capa varchar(200) not null,
lingua varchar(10),
id_album int,

foreign key (id_album) references tbl_album(id),

unique key (id),
unique index (id)
);

insert into tbl_musica (nome, letra, duracao, foto_capa, lingua, id_album) values
('Blue Orangeade', 'Someone say what’s going on
대체 어떻게 넌
너와 정반대인 앨 만나니
나도 모르겠어 but
I know 계속해서
서로에게 끌려 막
넌 빨간 장미를 좋아해
넌 파란 바다를 좋아해
But I like violet 또
가고 싶어 사늘로
우린 정반대인 거야
그래서 더 특별한 거야
It seems like
마치 blue orangeade 처럼
We like, we like, we like
컴컴한 세상 그 속에
넌 내 제일 멋진 색인걸
Girl, I need it, need it
Need it, need it, babe
Need, need it, need it
정반대 같은 보색
이 세계를 색칠하고 싶어
우리끼리 찍찍찍찍 babe
우리끼리 찍
Say woah
우리끼리 babe
Say woah
Won’t you give it to me?
정반대 같은 보색
너와 함께하고 싶어
우리끼리 찍찍찍찍 babe
우리끼리 찍
아침을 좋아하는 너
또 아침에 잠에 들 나
When I say: Good morning
You say: Good night
Hey
You like 2pac, I like Biggie, Biggie
넌 강아지, 난 kitty kitty
우린 s, 또 n 자석 같아
네 옆에 존재해야 완벽한걸
넌 빨간 장미를 좋아해
넌 파란 바다를 좋아해
But I like violet 또
가고 싶어 사늘로
우린 정반대인 거야
그래서 더 특별한 거야
It seems like (seems like)
마치 blue orangeade 처럼
We like, we like, we like
컴컴한 세상 그 속에
넌 내 제일 멋진 색인걸
Girl, I need it, need it
Need it, need it, babe
Need, need it, need it
정반대 같은 보색
이 세계를 색칠하고 싶어
우리끼리 찍찍찍찍 babe
우리끼리 찍
너는 내 삶의 중심 (삶의 중심)
너는 내 맘의 불빛 (맘의 불빛)
Minus one, plus, plus one
I can stay young cuz of you
계절이 지나가듯이
네가 날 꽃필 수 있게 해 줘
차가운 나를 녹여줘 whoo
Oh yeah, yeah, yeah
컴컴한 세상 그 속에
넌 내 제일 멋진 색인걸
Girl, I need it, need it
Need it, need it, babe
Need, need it, need it
정반대 같은 보색
이 세계를 색칠하고 싶어
우리끼리 찍찍찍찍 babe
우리끼리 찍
Say woah
우리끼리 babe
Say woah
Won’t you give it to me?
정반대 같은 보색
너와 함께하고 싶어
우리끼리 찍찍찍찍 babe
우리끼리 찍', '00:03:06', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/The_Dream_Chapter_Star.png', 'coreano', 1);


update tbl_album set lingua = 'coreano' where id = 1;

select * from tbl_album;
select * from tbl_musica;
drop table tbl_musica;
show tables;