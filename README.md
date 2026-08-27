# 🛒 Pedidos API

API RESTful para gerenciamento de usuários, autenticação, clientes e pedidos, desenvolvida com **Ruby on Rails**.

O projeto foi criado com foco em boas práticas de desenvolvimento de APIs, autenticação utilizando **JWT**, persistência de dados com **Active Record**, testes automatizados com **RSpec** e documentação interativa utilizando **Swagger/OpenAPI**.

---

## 🚀 Tecnologias

- Ruby 4.0
- Ruby on Rails 8.1
- PostgreSQL
- Active Record
- BCrypt
- JWT
- RSpec
- Rswag
- Swagger / OpenAPI
- RuboCop
- Bundler

---

## 📋 Funcionalidades

### 🔐 Autenticação

- Cadastro de usuários
- Login com e-mail e senha
- Autenticação utilizando JWT
- Proteção de endpoints utilizando Bearer Token
- Senhas armazenadas de forma segura utilizando BCrypt

### 👤 Clientes

- Criar cliente
- Listar clientes
- Consultar cliente por ID
- Atualizar cliente
- Excluir cliente

### 📦 Pedidos

- Criar pedido
- Listar pedidos
- Consultar pedido por ID
- Atualizar pedido
- Excluir pedido

### 📚 Documentação

- Documentação dos endpoints utilizando Swagger/OpenAPI
- Interface Swagger UI
- Testes de endpoints integrados à documentação através do Rswag

---

# 🏗️ Arquitetura

O projeto segue a estrutura padrão do Ruby on Rails:

```text
pedidos-api/
│
├── app/
│   ├── controllers/
│   │   ├── application_controller.rb
│   │   ├── customers_controller.rb
│   │   ├── orders_controller.rb
│   │   ├── sessions_controller.rb
│   │   └── users_controller.rb
│   │
│   └── models/
│       ├── customer.rb
│       ├── order.rb
│       └── user.rb
│
├── config/
│   ├── routes.rb
│   └── initializers/
│
├── db/
│   ├── migrate/
│   └── schema.rb
│
├── spec/
│   ├── requests/
│   │   └── users_spec.rb
│   └── swagger_helper.rb
│
├── swagger/
│   └── v1/
│       └── swagger.yaml
│
├── Gemfile
├── Gemfile.lock
├── Dockerfile
└── README.md
```
##  Testando a API

### Com Swagger
1. Acesse `https://localhost:3000/swagger`
3. Execute `/api/AuthToken/AuthToken` para obter o token
4. Clique em "Authorize" e insira: `Bearer {seu-token}`
5. Teste os endpoints protegidos

##  Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

---

**Desenvolvido por [Cauê Santander](https://www.linkedin.com/in/cau%C3%AA-santander-555ab9129/)**

**Versão:** 1.0.0 - API Pedidos  
**Data de Atualização:** Agosto 2026

