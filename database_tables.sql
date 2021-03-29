-- table dropping
DROP TABLE IF EXISTS clientT;
DROP TABLE IF EXISTS articlesT;
=


-- CREATE table
-- Client
CREATE TABLE clientT
(
    clientID      VARCHAR(4),
    fName         VARCHAR(20),
    lName         VARCHAR(30),
    DOB           DATE,
    Gender        CHAR(1),
    accessDate    DATE,

    CONSTRAINT clientT_PK PRIMARY KEY(ClientID)
);

-- Publisher
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
    conversationID  VARCHAR(6),
    clientID        VARCHAR(4),
    Date            DATE;,
    message         VARCHAR(100),

    CONSTRAINT conversationT_PK PRIMARY KEY (articleID) REFERENCES clientT;
);
