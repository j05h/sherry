class User < ActiveRecord::Base
  has_many :links, :order => 'updated_at desc'
end
