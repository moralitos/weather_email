# This class will store the city names
# that the service will poll for email
class City < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
end
