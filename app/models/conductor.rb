class Conductor < ActiveRecord::Base

  has_many :proyectos
  has_many :calcmecanicos
	
end
