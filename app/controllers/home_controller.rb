class HomeController < ApplicationController

  def index
  	@project = Project.where(id: 4)
  end
end