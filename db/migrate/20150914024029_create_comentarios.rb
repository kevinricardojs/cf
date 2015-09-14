class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :correo
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
