class Startup < ActiveRecord::Base
  validates_presence_of :name, :bio, :description, :full_logo, :square_logo, :stage
end
