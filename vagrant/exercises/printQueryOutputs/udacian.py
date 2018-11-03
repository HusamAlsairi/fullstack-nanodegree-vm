#!/usr/bin/env python3
# 
# 

import psycopg2



def connect_to_db():
  ''' setup the connection to "news" Database'''
  db = psycopg2.connect("dbname=vagrant")
  c = db.cursor()
  return db, c
  


def firstTask():
  db, c = connect_to_db()
  query = "select DISTINCT( udacian.name) , udacian.nanodegree, udacian.status \
  from udacian, nanodegree\
  where nanodegree = 'FSND' and status = 'on-track'"
  c.execute(query)
  result = c.fetchall()
  db.close()
  print ("\n ")
  for i in range(0, len(result), 1):
    print(result[i][0], " is studying", result[i][1], ", he/she is ", result[i][2])



# def popular_articles():
#   '''print most 3 popular articles'''
#     db, c = connect_to_db()
#     query = "select * from popular_articles_view limit 3"
#     c.execute(query)
#     p_articles = c.fetchall()
#     db.close()
#     print ("\n Most Popular Three Articles are: \n")
#     for i in range(0, 3, 1):
#         print ("\"",p_articles[i][0], "\" - ",p_articles[i][1], " views")



firstTask()