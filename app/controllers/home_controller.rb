class HomeController < ApplicationController

  def index
  	@project = Project.find(1)
  end
end