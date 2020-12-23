class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|

      t.timestamps
    end
  end
end
