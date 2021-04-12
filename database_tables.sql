-- table dropping
DROP TABLE IF EXISTS conversationT;
DROP TABLE IF EXISTS articlesT;
DROP TABLE IF EXISTS clientT;

-- CREATE table
-- Client
CREATE TABLE clientT
(
    clientID            VARCHAR(6),
    fName               VARCHAR(20),
    lName               VARCHAR(30),
    email               VARCHAR(30),
    password            VARCHAR(30),
    DOB                 DATE,
    Gender              CHAR(1),
    firstDateJoined     DATE,

    CONSTRAINT clientT_PK PRIMARY KEY(clientID)
);

-- article table - create first 
CREATE TABLE articlesT
(
    articleID       VARCHAR(6),
    name            VARCHAR(30),
    url_address     VARCHAR(50),
    keywords        VARCHAR(50),

    CONSTRAINT articlesT_PK PRIMARY KEY (articleID)
);

-- Conversation log database

CREATE TABLE conversationT
(
    conversationID      VARCHAR(6),
    clientID            VARCHAR(6),
    articleID           VARCHAR(6),
    accessDate          DATE,

    CONSTRAINT conversationT_PK PRIMARY KEY (conversationID),
    CONSTRAINT conversationT_FK2 FOREIGN KEY (clientID) REFERENCES clientT(clientID),
    CONSTRAINT conversationT_FK1 FOREIGN KEY (articleID) REFERENCES articlesT(articleID)

);
