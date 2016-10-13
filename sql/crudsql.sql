-- crud

insert into guestbook values (guestbook_seq.nextval, '마이콜' , 'ㅇㅇ','1234',sysdate);

delete from guestbook where no = 16 and password = '1234';

commit;

select no, name, content, password, to_char(reg_date, 'yyyy-mm-dd hh:mi:ss') from guestbook order by reg_date desc ;

select rownum,no, name, content, password, to_char(reg_date, 'yyyy-mm-dd hh:mi:ss') from guestbook order by reg_date desc ;

select rank()over(order by reg_date) rank, no, name, content, password, to_char(reg_date, 'yyyy-mm-dd hh:mi:ss') from guestbook order by reg_date desc ;

