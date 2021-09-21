import psycopg2
from psycopg2 import sql

if __name__ == "__main__":
    print('Example of using psycopg2\n')
    # database must already exist 
    conn = psycopg2.connect("dbname = 431hw6 user = postgres")
    cur = conn.cursor()

    cur.execute('CREATE SCHEMA IF NOT EXISTS chua')

    cur.execute('CREATE TABLE IF NOT EXISTS chua.movie(title varchar(30), yr int)')
	print(f"Populating movie database\n")
    while True:
	  x = input('Enter movie title: ')
	  y = input('Enter year of release: ')
	  
	  # write title and year to table in the database
	  cur.execute('INSERT INTO chua.movies (title, yr) VALUES(x,y)')
	  
	  z = input('Are you done? (y/n)')
	  if(z == 'y'):
			break

    query = sql.SQL("INSERT INTO chua.movies (title, yr) VALUES({title}, {yr})").format(
            title = sql.Literal(title),
            yr = sql.Literal(yr))
			cur.execute(query)
        
	while True:
	  a = input('Search for title? (y/n) ')
	  if(a == 'y'):
		b = input('Enter movie title: ')
		print(f"title         year")
		print(f"------------------")
		
		#search and retrive data from table
		cur.execute('SELECT * FROM chua.movie')
		result = cur.fetchall()
		count = 0
		for x in result:
		  if(x == b):
			count += 1
			if(count < 2):
			 print(x)

		print(f"Number of movies in database = ", count)
		c = input('Are you done? (y/n) ')
		if(c == 'y'):
			break
	  else:
		d = input('Enter year of release: ')
		print(f"title         year")
		print(f"------------------")
		
		#search and retrive data from table
		cur.execute('SELECT * FROM chua.movie')
		result = cur.fetchall()
		count = 0
		for x in result:
		  if(x == d):
			count += 1
			if(count < 2):
			 print(x)

		print(f"Number of movies in database = ", count)
		e = input('Are you done? (y/n) ')
		if(e == 'y'):
			break
		
    conn.commit()
    cur.close()
    conn.close()
