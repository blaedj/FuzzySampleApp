class Blog < ActiveRecord::Base
  attr_accessible :author, :date, :entry
end
