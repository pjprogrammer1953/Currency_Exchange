require 'sqlite3'

class Database

class Database

  def self.load_structure
    Database.execute <<-SQL
    CREATE TABLE IF NOT EXISTS scenarios (
      id integer PRIMARY KEY AUTOINCREMENT,
      name varchar(255) NOT NULL
    );
    SQL
    Database.execute <<-SQL
    CREATE TABLE IF NOT EXISTS choices (
      id integer PRIMARY KEY AUTOINCREMENT,
      selected_scenario_id integer NOT NULL,
      rejected_scenario_id integer NOT NULL
    );
    SQL
  end

  
end



  def self.load_structure
    Database.execute <<-SQL
    CREATE TABLE IF NOT EXISTS currency_X (
      id integer PRIMARY KEY AUTOINCREMENT,
      country_name varchar(20),
      currency varchar(20),
      currency_abrv varchar(4),
      rate_to_euro numeric(9.6)
    );
    SQL
  end

  def self.execute(*args)
    initialize_database unless defined?(@@db)
    @@db.execute(*args)
  end

  def self.initialize_database
    database = "currencies.sqlite"
    @@db = SQLite3::Database.new(currencies.sqlite)
  end

#  def self.initialize_database
#    environment = ENV["TEST"] ? "test" : "production"
#    database = "db/would_you_rather_#{environment}.sqlite"
#    @@db = SQLite3::Database.new(database)
#    @@db.results_as_hash = true
#  end

end
