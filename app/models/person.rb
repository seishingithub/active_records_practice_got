class Person < ActiveRecord::Base
  belongs_to :house

  validates :name, presence: true
  validates :description, presence: true

end