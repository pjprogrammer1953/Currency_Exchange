class Scenario
  def self.count
    Database.execute("select count(id) from scenarios")[0][0]
  end
end
