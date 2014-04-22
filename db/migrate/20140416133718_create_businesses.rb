class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :value
      t.string :market
      t.string :persona
      t.string :business_model
      t.string :channels
      t.string :validation
      t.string :pretotype

      t.timestamps
    end
  end
end
