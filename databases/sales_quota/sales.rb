require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("sales.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS sales(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    quota INT
  )
SQL

db.execute(create_table_cmd)

def create_sales_person(db, first_name, last_name, quota)
  db.execute("INSERT INTO sales (first_name, last_name, quota) VALUES (?, ?, ?)", [first_name, last_name, quota])
end

