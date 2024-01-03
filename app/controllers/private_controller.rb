# app/controllers/private_controller.rb
class PrivateController < ApplicationController
    before_action :authenticate_user!
  
    def test
      render json: {
        message: "This is a secret message. You are seeing this because you have logged in successfully."
      }
    end
  end
  