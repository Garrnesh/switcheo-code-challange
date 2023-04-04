create table balances (id integer, address varchar(100), denom varchar(10), amount bigint, block_height bigint);
insert into balances (id, address, denom, amount, block_height) values (1, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'usdc', 50000000000000, 733755);
insert into balances (id, address, denom, amount, block_height) values (2, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'swth', -20000000, 733757);
insert into balances (id, address, denom, amount, block_height) values (3, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'usdc', -50000000000, 733855);
select * from balances;

create table trades (id integer, address varchar(100), denom varchar(10), amount bigint, block_height bigint);
insert into trades (id, address, denom, amount, block_height) values (1, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'swth', 400000000000, 733756);
insert into trades (id, address, denom, amount, block_height) values (2, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'usdc', 3500000000000, 733757);
insert into trades (id, address, denom, amount, block_height) values (3, '0xc0ffee254729296a45a3885639AC7E10F9d54979', 'swth', 72000000000000, 733758);
select * from trades;