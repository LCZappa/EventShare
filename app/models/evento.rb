class Evento < ActiveRecord::Base
  belongs_to :usuario
  has_many :convidados
end
