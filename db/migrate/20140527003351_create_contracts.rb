class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
    add_index :contracts, :user_id
  end
end
