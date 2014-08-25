class Proyecto < ActiveRecord::Base

  belongs_to :zona
  belongs_to :cond_e, :class_name=>'Conductor', :foreign_key=>'cond_e_id'
  belongs_to :cond_g, :class_name=>'Conductor', :foreign_key=>'cond_g_id'
  belongs_to :tconstr
  has_many :puntos

end
