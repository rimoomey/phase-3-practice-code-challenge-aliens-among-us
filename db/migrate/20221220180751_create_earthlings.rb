class CreateEarthlings < ActiveRecord::Migration[6.1]
  def change
    create_table :earthlings do |t|
      t.string :first_name
      t.string :last_name
      t.string :job
    end
  end
end
