class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
			t.integer :customer_id, default: 1

    end
  end
end
