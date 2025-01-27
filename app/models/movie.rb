# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :string
#  image       :string
#  title       :string
#  year        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :string
#
class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters
  has_many :cast, :through => :characters, :source => :actor
  has_many :bookmarks 
  has_many :bookmarkers, :through => :bookmarks, :source => :user

  validates(:title,{:presence => true})
end
