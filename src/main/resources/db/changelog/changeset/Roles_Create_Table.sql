--liquibase formatted sql

--changeset liquibase:14
CREATE TABLE roles
(
    id                      INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name                    VARCHAR(60)                              NOT NULL,
    is_removed              BOOLEAN                                  NOT NULL,
    CONSTRAINT pk_roles     PRIMARY KEY (id)
);

--changeset liquibase:15
INSERT INTO roles (name, is_removed)
VALUES ('Logistic', false),
       ('Planning', false),
       ('Maintenance', false)