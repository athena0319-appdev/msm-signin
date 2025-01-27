class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director_id
      t.string :year
      t.string :duration
      t.string :image

      t.timestamps
    end
  end
end
