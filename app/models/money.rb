class Money
  attr_accessor :id

  def self.all
    Database.execute("select * from currency_X order by id").map do |row|
      money = Money.new
      money.id = row[0]
      money
    end
  end

#  def self.count
#    Database.execute("select * from currency_X")[0][0]
#  end
end
