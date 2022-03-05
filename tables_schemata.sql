create table titles (
	title_id varchar(30) primary key not null,
	title varchar(30) not null
);

create table departments (
	dept_no varchar(30) primary key not null,
	dept_name varchar(30) not null
);

create table employees (
	emp_no int primary key not null,
	emp_title_id varchar(30) not null, 
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id) 
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(30) not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table dept_manager (
	dept_no varchar(30) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);