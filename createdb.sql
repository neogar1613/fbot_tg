create table budget(
    codename varchar(255) primary key,
    daily_limit integer,
    month_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    amount integer,
    created datetime,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "продукты", true, "еда"),
    ("flat", "жильё", true, "аренда, кв, квартира");
    ("internet", "интернет", true, "инет, inet"),
    ("transport", "транспорт", false, "метро, мцк, metro"),
    ("others", "прочее", false, "");

insert into budget(codename, daily_limit, month_limit) values ('base', 0, 30000);
insert into budget(codename, daily_limit, month_limit) values ('others', 500, 15000);