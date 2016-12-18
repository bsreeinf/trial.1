class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|
      t.text :title
      t.references :employee, index: true

      t.timestamps
    end
  end
end
