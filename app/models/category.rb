class Category < ActiveRecord::Base
  has_and_belongs_to :posts
end
