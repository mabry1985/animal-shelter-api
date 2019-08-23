class Cat < ApplicationRecord
  def self.random
    ActiveRecord::Base.connection.execute("SELECT * FROM cats ORDER BY random() LIMIT(1)").first
  end


end
