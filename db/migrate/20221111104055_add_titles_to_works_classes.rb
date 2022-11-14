class AddTitlesToWorksClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :task_title, :string
    add_column :works, :content1_title, :string
    add_column :works, :focus_title, :string
    add_column :works, :content2_title, :string
  end
end
