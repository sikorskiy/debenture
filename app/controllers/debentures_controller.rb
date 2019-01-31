class DebenturesController < ApplicationController

  def new
    @debenture = User.new
  end
end
