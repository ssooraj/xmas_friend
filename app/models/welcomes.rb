class Welcomes < ActiveRecord::Base
	attr_accessible :name
	attr_accessible :sname
	attr_accessible :selected
	attr_accessible :logged
end
