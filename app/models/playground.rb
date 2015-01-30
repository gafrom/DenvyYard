class Playground < ActiveRecord::Base
	has_many :microposts
	has_many :options
end
