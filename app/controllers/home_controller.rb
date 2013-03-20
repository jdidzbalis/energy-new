class HomeController < ApplicationController

  def index
  	@project = Project.find(4)
  end
end