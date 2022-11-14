class AddClassesToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :tasks, :string
    add_column :works, :content1, :string
    add_column :works, :focus, :string
    add_column :works, :content2, :string
  end
end
