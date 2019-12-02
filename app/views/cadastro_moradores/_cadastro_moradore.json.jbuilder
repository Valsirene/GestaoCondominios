json.extract! cadastro_moradore, :id, :nome, :endereco, :email, :telefone, :created_at, :updated_at
json.url cadastro_moradore_url(cadastro_moradore, format: :json)
