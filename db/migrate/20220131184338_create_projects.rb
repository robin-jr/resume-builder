class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.text :description
      t.string :title
      t.string :project_url
      t.string :tech_stack

      t.timestamps
    end
  end
end
