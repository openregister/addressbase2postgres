# Raw AddressBase data and scripts to put it into PostgreSQL

This repo is where you should download raw AddressBase data in CSV format,
mung it, and put it into a PostgreSQL.

It is based on earlier work in the
[addressbase-data](https://github.com/openregister/addressbase-data) repo.

## Getting the CSVs

1. Go to the [orders
   portal](https://orders.ordnancesurvey.co.uk/orders/index.html).  If you don't
   have a login, get one.  The original
   [addressbase-data](https://github.com/openregister/addressbase-data) has some
   clues for doing that.
2. Click
   [`Order`](https://orders.ordnancesurvey.co.uk/orders/contractList.html).
3. Click `AddressBase Premium` (not `AddressBase Premium - 5km DOWNLOAD`).
4. There will be a couple of rows, and you want one that has Data Format 'CSV'
   and Delivery Method 'Download'.  If there isn't one, then choose either of
   them, click `edit`, change it, then click 'Next' and keep following the
   buttons.  Eventually you will end up back here.
5. Click 'Order more'.  A map will partly load and invite you to use Flash.  You
   don't need to.  "The whole of Great Britain" should already be selected.
   Click "Add to basket", and follow through until the order has been placed.
6. Receive an email with a link.
7. Download the single zip file into the top level of this repo.
8. Unzip it into a subdirectory `data`

## Reorganising the CSVs

Each CSV contains rows from more than one table.  The ID of the table is the
first value in each row.  So we use awk (specifically, gawk) to scan each row
and append it to a particular file according to the first value.

```sh
mkdir -p data/by_type
gawk -F, '{print >> "data/by_type/"$1".csv"}' data/*.csv
```

## Loading into PostgreSQL

```sh
createdb addressbase

psql -d addressbase -a -f sql/drop-tables.pgsql
psql -d addressbase -a -f sql/create-tables.pgsql

# psql -d addressbase -c "\copy basiclandpropertyunit FROM 'data/by_type/21.csv' delimiter ',' csv;"
# psql -d addressbase -c "\copy classification FROM 'data/by_type/32.csv' delimiter ',' csv;"
psql -d addressbase -c "\copy deliverypointaddress FROM 'data/by_type/28.csv' delimiter ',' csv;"
psql -d addressbase -c "\copy landpropertyidentifier FROM 'data/by_type/24.csv' delimiter ',' csv;"
# psql -d addressbase -c "\copy organisation FROM 'data/by_type/31.csv' delimiter ',' csv;"
# psql -d addressbase -c "\copy applicationcrossreference FROM 'data/by_type/23.csv' delimiter ',' csv;"
# psql -d addressbase -c "\copy street FROM 'data/by_type/11.csv' delimiter ',' csv;"
psql -d addressbase -c "\copy streetdescriptiveidentifier FROM 'data/by_type/15.csv' delimiter ',' csv;"
```
