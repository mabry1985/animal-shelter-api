class Dog < ApplicationRecord
  def self.random
    ActiveRecord::Base.connection.execute("SELECT * FROM dogs ORDER BY random() LIMIT(1)").first
  end
end
