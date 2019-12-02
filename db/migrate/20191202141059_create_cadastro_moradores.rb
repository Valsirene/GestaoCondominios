class CreateCadastroMoradores < ActiveRecord::Migration[6.0]
  def change
    create_table :cadastro_moradores do |t|
      t.string :nome
      t.text :endereco
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
