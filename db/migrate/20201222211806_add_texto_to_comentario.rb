class AddTextoToComentario < ActiveRecord::Migration[6.1]
  def change
    add_column :comentarios, :texto, :text
  end
end
