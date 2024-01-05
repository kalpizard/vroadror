
# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#     allow do
#       origins "*"
#       resource "*",
#         headers: :any,
#         methods: [:get, :post, :put, :patch, :delete, :options, :head],
#         expose: %i[Authorization Uid]  # Corregido aquí
#     end
#   end
  
# api/config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
    headers: ["Authorization"],
    expose: ["Authorization"],
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    max_age: 600
  end
end