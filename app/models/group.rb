class Group < ActiveRecord::Base
	has_many :users
	has_many :movies, :through => :users
	has_many :tvs, :through => :users
	has_many :podcasts, :through => :users
end
