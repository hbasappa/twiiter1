class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :Tweet
      t.string :Author
      t.string :Location

      t.timestamps :Time
    end
  end
end
