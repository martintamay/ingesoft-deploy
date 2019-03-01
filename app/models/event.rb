class Event < ApplicationRecord
	has_many :event_comments
	has_many :event_tickets
	has_many :event_dates
  accepts_nested_attributes_for :event_dates, :allow_destroy => true
  accepts_nested_attributes_for :event_tickets, :allow_destroy => true
	belongs_to :user
	belongs_to :event_category
	belongs_to :event_category
	scope :by_tipo, -> (param) { where("event_type_id = ?", "#{param}") }
  scope :with_ciudad, -> (param) { where("ubicacion ILIKE ?", "%#{param}%")}
  scope :with_fecha, -> (param) {joins(:event_dates).where("event_dates.fecha_inicio > ?", "%#{param}%")}

  	def tipo_evento
  	end

  	def ciudad
  	end

  	def fecha
  	end
end
