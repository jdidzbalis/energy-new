class ProjectsController < ApplicationController
  def index
	@projects = Project.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  def new
	@project = Project.new

	respond_to do |format|
	  format.html # new.html.erb
	  format.json { render json: @project }
	end
  end


  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  def update
    @project = Project.find(params[:id])
    @return = Return.where(project_id: @project)

    @project.update_attributes(params[:project])

    @project.calculate_project_returns
    
    @return.each do |returns|
      returns.update_attribute(:state_returns, 'active')
      returns.calculate_investor_returns
    end

    

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project successfully operating. Returns now activated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @return.errors, status: :unprocessable_entity }
      end
      
     


    end
  end
end
