class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.float :income
      t.float :house
      t.float :elec
      t.float :credit
      t.float :gas
      t.float :car
      t.float :insur
      t.float :water
      t.float :money

      t.timestamps
    end
  end
end
