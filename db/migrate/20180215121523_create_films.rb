class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :film_title

      t.timestamps
    end
  end
end
