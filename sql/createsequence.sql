-- sequence

drop SEQUENCE guestbook_seq;

create sequence guestbook_seq
start WITH 1
increment by 1
maxvalue 999999999;