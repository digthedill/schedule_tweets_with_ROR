class MainController < ApplicationController
    def index
        flash.now[:notice] = "Logged in successful"
        flash.now[:alert] = "Incorrect Login. Try again!"
    end
end