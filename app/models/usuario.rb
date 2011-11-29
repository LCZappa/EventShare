class Usuario < ActiveRecord::Base
  has_many :eventos
end
