class AddEmailToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :email, :string
  end
end
