require "swagger_helper"

RSpec.describe "Orders API", type: :request do
  path "/orders" do
    get "List orders" do
      tags "Orders"
      security [bearerAuth: []]

      response "200", "Orders found" do
        run_test!
      end
    end

    post "Create order" do
      tags "Orders"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          customer_id: {
            type: :integer,
            example: 1
          },
          status: {
            type: :string,
            example: "pending"
          },
          total: {
            type: :number,
            format: :float,
            example: 150.50
          }
        },
        required: %w[customer_id status total]
      }

      response "201", "Order created" do
        let(:order) do
          {
            customer_id: 1,
            status: "pending",
            total: 150.50
          }
        end

        run_test!
      end

      response "422", "Invalid order" do
        let(:order) do
          {
            customer_id: 1,
            status: "",
            total: 0
          }
        end

        run_test!
      end
    end
  end

  path "/orders/{id}" do
    parameter name: :id, in: :path, type: :integer, example: 1

    get "Get order" do
      tags "Orders"
      security [bearerAuth: []]

      response "200", "Order found" do
        let(:id) { 1 }

        run_test!
      end
    end

    patch "Update order" do
      tags "Orders"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          customer_id: {
            type: :integer,
            example: 1
          },
          status: {
            type: :string,
            example: "completed"
          },
          total: {
            type: :number,
            format: :float,
            example: 200.00
          }
        }
      }

      response "200", "Order updated" do
        let(:id) { 1 }

        let(:order) do
          {
            customer_id: 1,
            status: "completed",
            total: 200.00
          }
        end

        run_test!
      end
    end

    put "Update order" do
      tags "Orders"
      security [bearerAuth: []]
      consumes "application/json"

      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          customer_id: {
            type: :integer,
            example: 1
          },
          status: {
            type: :string,
            example: "completed"
          },
          total: {
            type: :number,
            format: :float,
            example: 200.00
          }
        }
      }

      response "200", "Order updated" do
        let(:id) { 1 }

        let(:order) do
          {
            customer_id: 1,
            status: "completed",
            total: 200.00
          }
        end

        run_test!
      end
    end

    delete "Delete order" do
      tags "Orders"
      security [bearerAuth: []]

      response "204", "Order deleted" do
        let(:id) { 1 }

        run_test!
      end
    end
  end
end