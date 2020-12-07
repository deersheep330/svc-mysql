CREATE TABLE IF NOT EXISTS stock (
    symbol VARCHAR(16) NOT NULL,
    name VARCHAR(64) NOT NULL,
    PRIMARY KEY (symbol)
);

CREATE TABLE IF NOT EXISTS ptt_trend (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    popularity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);

CREATE TABLE IF NOT EXISTS reunion_trend (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    popularity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);

CREATE TABLE IF NOT EXISTS twse_over_bought (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);

CREATE TABLE IF NOT EXISTS twse_over_sold (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);

CREATE TABLE IF NOT EXISTS fugle_over_bought (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);

CREATE TABLE IF NOT EXISTS fugle_over_sold (
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
    symbol VARCHAR(16) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (symbol) REFERENCES stock (symbol),
    PRIMARY KEY (date, symbol)
);
