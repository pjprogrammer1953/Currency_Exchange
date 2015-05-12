require 'rubygems'
require 'bundler/setup'
require "minitest/reporters"
Dir["./app/**/*.rb"].each { |f| require f }
Dir["./lib/*.rb"].each { |f| require f }

reporter_options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]

require 'minitest/autorun'
class Minitest::Test
  def setup
    Database.execute <<-SQL
    CREATE TABLE IF NOT EXISTS scenarios (
      id integer PRIMARY KEY AUTOINCREMENT,
      name varchar(255) NOT NULL
    );
    SQL
    Database.execute("DELETE FROM scenarios;")
  end
end

def create_scenario(name)
  Database.execute("INSERT INTO scenarios (name) VALUES (?)", name)
end


def main_menu
  "1. Add a scenario\n2. List all scenarios\n3. Exit\n"
end
