class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search_breed(breed)
    where(breed: breed)
  end
  
end
