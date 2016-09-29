
USE `db_jwdb`;

CREATE TABLE `tb_message`(
  `bh` varchar(30) NOT null,
  `xm` varchar(30) NOT null,
  `kl` varchar(30) NOT null,
  `xx` varchar(30) NOT null,

   PRIMARY KEY   (`bh`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into  tb_message values('004','li4','44444','is a worker');
insert into  tb_message values('005','wang5','5555','is a student');		
insert into  tb_message values('007','zhang3','7777','is a teacher');
		



		

