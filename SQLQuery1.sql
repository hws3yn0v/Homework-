create database pustok;
use pustok;


Book {
	id int pk increments
	Name nvarchar(50)
	Image nvarchar(100)
}

Writer {
	id integer pk increments
	FullName nvarchar(50)
}

Genre {
	id int pk increments
	Name nvarchar
	Book_id integer *> Book.id
}

Tag {
	id int pk increments
}

BookWriter {
	id integer pk increments
	Book_id integer *> Book.id
	Writer_id integer *> Writer.id
}

BookTag {
	id integer pk increments
	Book_id int *> Book.id
	Tag_id int *> Tag.id
}