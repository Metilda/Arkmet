class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employeename
      t.string :designation
      t.string :email
      t.text :description
      t.decimal :salary
      t.boolean :active

      t.timestamps
    end
  end
end
