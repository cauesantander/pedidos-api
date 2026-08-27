# \# 🛒 Pedidos API

# 

# API RESTful para gerenciamento de usuários, autenticação, clientes e pedidos, desenvolvida com \*\*Ruby on Rails\*\*.

# 

# O projeto foi criado com foco em boas práticas de desenvolvimento de APIs, autenticação utilizando \*\*JWT\*\*, persistência de dados com \*\*Active Record\*\*, testes automatizados com \*\*RSpec\*\* e documentação interativa utilizando \*\*Swagger/OpenAPI\*\*.

# 

# \---

# 

# \## 🚀 Tecnologias

# 

# \- Ruby 4.0

# \- Ruby on Rails 8.1

# \- PostgreSQL

# \- Active Record

# \- BCrypt

# \- JWT

# \- RSpec

# \- Rswag

# \- Swagger / OpenAPI

# \- RuboCop

# \- Bundler

# 

# \---

# 

# \## 📋 Funcionalidades

# 

# \### 🔐 Autenticação

# 

# \- Cadastro de usuários

# \- Login com e-mail e senha

# \- Autenticação utilizando JWT

# \- Proteção de endpoints utilizando Bearer Token

# \- Senhas armazenadas de forma segura utilizando BCrypt

# 

# \### 👤 Clientes

# 

# \- Criar cliente

# \- Listar clientes

# \- Consultar cliente por ID

# \- Atualizar cliente

# \- Excluir cliente

# 

# \### 📦 Pedidos

# 

# \- Criar pedido

# \- Listar pedidos

# \- Consultar pedido por ID

# \- Atualizar pedido

# \- Excluir pedido

# 

# \### 📚 Documentação

# 

# \- Documentação dos endpoints utilizando Swagger/OpenAPI

# \- Interface Swagger UI

# \- Testes de endpoints integrados à documentação através do Rswag

# 

# \---

# 

# \# 🏗️ Arquitetura

# 

# O projeto segue a estrutura padrão do Ruby on Rails:

# 

# ```text

# pedidos-api/

# │

# ├── app/

# │   ├── controllers/

# │   │   ├── application\_controller.rb

# │   │   ├── customers\_controller.rb

# │   │   ├── orders\_controller.rb

# │   │   ├── sessions\_controller.rb

# │   │   └── users\_controller.rb

# │   │

# │   └── models/

# │       ├── customer.rb

# │       ├── order.rb

# │       └── user.rb

# │

# ├── config/

# │   ├── routes.rb

# │   └── initializers/

# │

# ├── db/

# │   ├── migrate/

# │   └── schema.rb

# │

# ├── spec/

# │   ├── requests/

# │   │   └── users\_spec.rb

# │   └── swagger\_helper.rb

# │

# ├── swagger/

# │   └── v1/

# │       └── swagger.yaml

# │

# ├── Gemfile

# ├── Gemfile.lock

# ├── Dockerfile

# └── README.md

