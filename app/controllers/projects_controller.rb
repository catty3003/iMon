class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_project_admin_edit_destroy, only: [:edit, :update, :destroy]
  before_action :set_project_admin_create, only: [:new, :create]
  before_action :authenticate_user!

  # GET /projects
  # GET /projects.json
  def index
    if params[:sorting]
      @done = Project.where("done = ? OR deadline < ?", true, Date.today).order(params[:sorting] => :asc)
      @todo = Project.where("done = ? AND deadline > ?", false, Date.today).order(params[:sorting] => :asc)
    else 
      @done = Project.where("done = ? OR deadline < ?", true, Date.today)      
      @done = @done.order(deadline: :desc)
      @todo = Project.where("done = ? AND deadline > ?", false, Date.today)
      @todo = @todo.order(deadline: :asc)
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = current_user.projects.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to :back, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def set_project_admin_edit_destroy
      @project = Project.find(params[:id])
      if @project.user_id != current_user.id || current_user.admin != true
        redirect_to :back, alert: 'Only Admin are alowd to edit or delete Projects/ You can only change your own Project.'
      end
    end

    def set_project_admin_create
      @project = Project.new
      
      if current_user.admin != true
        redirect_to :back, alert: 'Only Admin are alowd to create Projects.'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :deadline, :done, :duration, :comment, :user_id)
    end
end
