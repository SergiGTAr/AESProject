create table user(
    id bigint not null auto_increment primary key,
    name varchar(40) not null,
    lastname varchar(40) not null,
    username varchar(20) not null unique,
    email varchar(255) not null unique,
    password varchar(40) not null,
    created_at datetime
);


create table profile(
    day_of_birth date null,
    gender varchar(1) not null,
    location varchar(100) null,
    image varchar(255) null,
    image_header varchar(255) null,
    bio varchar(255) null,
    address varchar(100) null,
    phone varchar(15) null unique,
    user_id bigint not null unique,
    privacy varchar(15) not null ,
    foreign key (user_id) references user(id)
);


create table post(
    id bigint not null auto_increment primary key ,
    content varchar(255) null ,
    user_id bigint not null ,
    created_at datetime not null ,
    image varchar(255) null ,
    likes int not null ,
    foreign key (user_id) references user(id)
);

create table category(
    id int not null auto_increment primary key ,
    name varchar(40) not null
);

create table post_category(
    category_id int not null unique ,
    post_id bigint not null unique ,
    foreign key (category_id) references category(id) ,
    foreign key (post_id) references post(id)
);


create table friend(
    sender_id bigint not null ,
    receptor_id bigint not null ,
    is_accepted bool not null ,
    created_at datetime not null,
    foreign key (sender_id) references user(id),
    foreign key (receptor_id) references user(id)
);


create table conversation(
    id int not null auto_increment primary key ,
    user1_id bigint not null ,
    user2_id bigint not null ,
    created_at datetime not null ,
    foreign key (user1_id) references user(id),
    foreign key (user2_id) references user(id)
);


create table comment(
    id int not null auto_increment primary key ,
    post_id bigint not null ,
    user_id bigint not null ,
    content varchar(255) not null ,
    created_at datetime not null ,
    foreign key (post_id) references post(id),
    foreign key (user_id) references user(id)
);


create table team(
    id int not null auto_increment primary key ,
    Name varchar(30) not null ,
    image varchar(255) null ,
    description varchar(255) null ,
    created_at datetime not null
);


create table likes(
    user_id bigint not null ,
    post_id bigint not null ,
    foreign key (user_id) references user(id),
    foreign key (post_id) references post(id)
);


create table team_user(
    user_id bigint not null ,
    team_id int not null ,
    foreign key (user_id) references user(id),
    foreign key (team_id) references team(id)
);


create table message(
    id int not null auto_increment primary key ,
    content varchar(255) null ,
    user_id bigint not null ,
    conversation_id int null ,
    created_at datetime not null ,
    image varchar(255) null ,
    team_id int not null ,
    foreign key (user_id) references user(id),
    foreign key (conversation_id) references conversation(id),
    foreign key (team_id) references team(id)
);


create table settings(
    user_id bigint not null unique,
    theme varchar(15) not null ,
    allow_likes bool not null ,
    foreign key (user_id) references user(id)
);

insert into user(name, lastname, username, email, password) VALUE ('Adrià', 'Pulido', 'AdjeReeves', 'adria.pulido@uvic.cat', '1234');
insert into user(name, lastname, username, email, password) VALUE ('Sergi', 'García', 'GTA', 'sergi.garcia@uvic.cat', '12345');
insert into user(name, lastname, username, email, password) VALUE ('Edu', 'Castellà', 'EduCaste', 'eduard.castella@uvic.cat', '123456');













