class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :correo
      t.text :cuerpo

      t.timestamps null: false
    end
  end
end
