dbname=presidio

output.txt:
	python randomNumbers.py

done: output.txt
	mysql $(dbname) -e "CREATE TABLE IF NOT EXISTS bootstrap (bookid MEDIUMINT UNSIGNED,INDEX(bookid),bootgroup SMALLINT UNSIGNED) ;"
	mysql $(dbname) -e "LOAD DATA LOCAL INFILE 'input.txt' INTO TABLE bootstrap"
	touch done
