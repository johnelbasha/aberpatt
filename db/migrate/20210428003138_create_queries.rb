class CreateQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :queries do |t|
      t.string :name
      t.string :email
      t.string :number
      t.text :message

      t.timestamps
    end
  end
end
