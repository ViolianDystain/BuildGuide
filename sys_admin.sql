create table BossList (id integer,
                                  ad varchar(100), 
                                  can integer,
                                  zor varchar(100),
                                  wiki varchar(100)
);

ALTER TABLE BossList ADD (
 CONSTRAINT BossList_pk PRIMARY KEY (id));

create sequence bosslist_seq start with 1 increment by 1 nomaxvalue;

create trigger bosslist_trigger
before insert on bossList
for each row
   begin
     select bosslist_seq.nextval into :new.id from dual;
   end;
   
create table users (ad varchar(25), soyad varchar(25), kullanici varchar(30), sifre varchar(20));
create table admin (kullanici varchar(30), sifre varchar(20));
insert into admin values ('admin',1234);



