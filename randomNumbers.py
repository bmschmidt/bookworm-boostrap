import MySQLdb
import random 

nboots = 10;
bookids = range(1200000)

output = open("output.txt","w")



elements = []

for i in range(nboots):
    for _ in xrange(len(bookids)):
        output.write(str(i) + "\t" + str(random.choice(bookids)) + "\n")

