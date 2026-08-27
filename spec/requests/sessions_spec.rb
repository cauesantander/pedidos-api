require "swagger_helper"

RSpec.describe "Sessions API", type: :request do
  path "/login" do
    post "Login" do
      tags "Authentication"
      consumes "application/json"

      parameter name: :credentials, in: :body, schema: {
        type: :object,
        properties: {
          email: {
            type: :string,
            example: "usuario@email.com"
          },
          password: {
            type: :string,
            example: "123456"
          }
        },
        required: %w[email password]
      }

      response "200", "Login successful" do
        let(:credentials) do
          {
            email: "usuario@email.com",
            password: "123456"
          }
        end

        run_test!
      end

      response "401", "Invalid credentials" do
        let(:credentials) do
          {
            email: "usuario@email.com",
            password: "senha_errada"
          }
        end

        run_test!
      end
    end
  end
end