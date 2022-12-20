class CreateJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :visitations do |t|
      t.datetime :date
      t.integer :alien_id
      t.integer :earthling_id
    end
  end
end
