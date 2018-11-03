
CREATE TABLE nanodegree (
    id serial,
    name text not null,
    description text not null
);

CREATE TABLE udacian (
    id serial,
    name text not null,
    email text not null,
    nanodegree text not null,
    status text not null
);

insert into nanodegree(name, description) values('FSND ','Full Stack Web Developer Nanodegree');

insert into nanodegree(name, description) values('FEND ','Front End Web Developer Nanodegree');

insert into nanodegree(name, description) values('IPND ','Introduction to Programming Nanodegree');


insert into udacian(name, email, nanodegree, status)
  values('Norah Mohammed','n.mohammed@hotmail.com', 'FSND', 'on-track');

insert into udacian(name, email, nanodegree, status)
  values('Khalid Adel','khalid_adel@gmail.com', 'IPND', 'behind');

insert into udacian(name, email, nanodegree, status)
  values('Nada Saleh','nada_saleh@hotmail.com', 'IPND', 'on-track');

insert into udacian(name, email, nanodegree, status)
  values('Abdullah Mohammed','abdullah.mohammed@yahoo.com', 'FSND', 'on-track');

insert into udacian(name, email, nanodegree, status)
  values('Mansoor Majed','m.majed@hotmail.com', 'FEND', 'critical');

insert into udacian(name, email, nanodegree, status)
  values('Maha Salem','salem.m@gmail.com', 'FSND', 'behind');

