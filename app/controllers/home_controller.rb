class HomeController < ApplicationController

  def index
  	@project = Project.where(id: 1)
  end
end