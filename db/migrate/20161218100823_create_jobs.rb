class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :title
      t.float :salary
      t.references :company, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
