class RemovingFalseElementsFromWorks < ActiveRecord::Migration[7.0]
  def change
    remove_column :works, :content1
    remove_column :works, :content1_title
    remove_column :works, :focus
    remove_column :works, :focus_title
    remove_column :works, :content2
    remove_column :works, :content2_title
    remove_column :works, :tasks
    remove_column :works, :task_title
  end
end
