class WelcomeController < ApplicationController
  def index
    # A fresh Rails app has no root route, so a deployed template would greet you
    # with a 404. This is the smallest thing that proves the stack is wired up.
    @database = ActiveRecord::Base.connection.execute("SELECT 1").any? ? "connected" : "unavailable"
  rescue StandardError
    @database = "unavailable"
  end
end
