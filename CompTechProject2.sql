LOAD DATA INFILE"C:\Program Files\MySQL\MySQL Server 8.0\Uploads\data.csv"INTO TABLE comp_tech.data;
LOAD DATA INFILE "C:ProgramData/MySQL/MySQL Server 8.0/Uploads/data.csv" INTO TABLE comp_tech.data;
FIELDS terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(@id,@product,@supplier,@quantity,@expenses,@receipt_date,@proceeds,@profit,@date_of_implementation)
set 
id=replace(@id,',','.'),
product=replace(@product,',','.'),
supplier=replace(@supplier,',','.'),
quantity=replace(@quantity,',','.'),
expenses=replace(@expenses,',','.'),
receipt_date=replace(@receipt_date,',','.'),
proceeds=replace(@proceeds,',','.'),
profit=replace(@profit,',','.'),
date_of_implementation=replace(@date_of_implementation,',','.');