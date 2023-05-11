# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :string
#
class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters

  has_many :cast, :through => :characters, :source => :actor
end
