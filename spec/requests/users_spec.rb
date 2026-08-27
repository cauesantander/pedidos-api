require "swagger_helper"

RSpec.describe "Users API", type: :request do
  path "/register" do
    post "Register user" do
      tags "Authentication"
      consumes "application/json"

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: {
                type: :string,
                example: "usuario@email.com"
              },
              password: {
                type: :string,
                example: "123456"
              },
              password_confirmation: {
                type: :string,
                example: "123456"
              }
            },
            required: %w[email password password_confirmation]
          }
        },
        required: [ "user" ]
      }

      response "201", "User created" do
        let(:user) do
          {
            user: {
              email: "usuario@email.com",
              password: "123456",
              password_confirmation: "123456"
            }
          }
        end

        run_test!
      end

      response "422", "Invalid user" do
        let(:user) do
          {
            user: {
              email: "",
              password: "123",
              password_confirmation: "456"
            }
          }
        end

        run_test!
      end
    end
  end
end