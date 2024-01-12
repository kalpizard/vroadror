# MIGRACION DE BASE DE DATOS PARA TRABAJAR CON SQL
class ChangeUserIndexesToSqlServerv2 < ActiveRecord::Migration[7.1]
  def up
    # fixing https://github.com/rails-sqlserver/activerecord-sqlserver-adapter/issues/153
  #  ELIMINACCION DE INDEX
    remove_index :users, :email
    remove_index :users, :reset_password_token
    # CONSULTAS SQL EN USER
    execute "CREATE UNIQUE NONCLUSTERED INDEX index_users_on_reset_password_token ON users (reset_password_token) WHERE reset_password_token IS NOT NULL;"
    execute "CREATE UNIQUE NONCLUSTERED INDEX index_users_on_email ON .users (email) WHERE email IS NOT NULL;"
  end

  def down
    # ELIMINA INDICES UNICOS
      execute "DROP INDEX index_users_on_reset_password_token ON users;"
      execute "DROP INDEX index_users_on_email ON users;"
      # AGREGA DOS COLUMNAS 
      add_index :users, :email, name: 'index_users_on_email', unique: true
      add_index :users, :reset_password_token, name: 'index_users_on_reset_password_token', unique: true
end
end