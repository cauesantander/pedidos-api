require "swagger_helper"

RSpec.describe "Customers API", type: :request do
  path "/customers" do
    get "List customers" do
      tags "Customers"
      security [bearerAuth: []]

      response "200", "Customers found" do
        run_test!
      end
    end

    post "Create customer" do
      tags "Customers"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :customer, in: :body, schema: {
        type: :object,
        properties: {
          name: {
            type: :string,
            example: "João da Silva"
          },
          email: {
            type: :string,
            example: "joao@email.com"
          }
        },
        required: %w[name email]
      }

      response "201", "Customer created" do
        let(:customer) do
          {
            name: "João da Silva",
            email: "joao@email.com"
          }
        end

        run_test!
      end

      response "422", "Invalid customer" do
        let(:customer) do
          {
            name: "",
            email: ""
          }
        end

        run_test!
      end
    end
  end

  path "/customers/{id}" do
    parameter name: :id, in: :path, type: :integer, example: 1

    get "Get customer" do
      tags "Customers"
      security [bearerAuth: []]

      response "200", "Customer found" do
        let(:id) { 1 }

        run_test!
      end
    end

    patch "Update customer" do
      tags "Customers"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :customer, in: :body, schema: {
        type: :object,
        properties: {
          name: {
            type: :string,
            example: "João Atualizado"
          },
          email: {
            type: :string,
            example: "novo@email.com"
          }
        }
      }

      response "200", "Customer updated" do
        let(:id) { 1 }

        let(:customer) do
          {
            name: "João Atualizado",
            email: "novo@email.com"
          }
        end

        run_test!
      end

      response "422", "Invalid customer" do
        let(:id) { 1 }

        let(:customer) do
          {
            name: "",
            email: ""
          }
        end

        run_test!
      end
    end

    put "Update customer" do
      tags "Customers"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :customer, in: :body, schema: {
        type: :object,
        properties: {
          name: {
            type: :string,
            example: "João Atualizado"
          },
          email: {
            type: :string,
            example: "novo@email.com"
          }
        }
      }

      response "200", "Customer updated" do
        let(:id) { 1 }

        let(:customer) do
          {
            name: "João Atualizado",
            email: "novo@email.com"
          }
        end

        run_test!
      end
    end

    delete "Delete customer" do
      tags "Customers"
      security [bearerAuth: []]

      response "204", "Customer deleted" do
        let(:id) { 1 }

        run_test!
      end
    end
  end
end