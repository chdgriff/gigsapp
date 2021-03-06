class JobApplicationsController < ApplicationController
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :show_applicants, :edit, :update, :destroy]

  # GET /job_applications
  # GET /job_applications.json
  def index
    @job_applications = JobApplication.all
    @posts = Post.all
  end

  # GET /job_applications/1
  # GET /job_applications/1.json
  def show
  end

  def show_applicants
    @job_applications = JobApplication.all
    @users = User.all
    @post = Post.find(params[:postid])
  end

  # GET /job_applications/new
  def new
    @job_application = JobApplication.new
    @post = Post.find(params[:postid])

  end

  # GET /job_applications/1/edit
  def edit
    @post = Post.find(params[:postid])
  end

  # POST /job_applications
  # POST /job_applications.json
  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.user_id = current_user.id

    respond_to do |format|
      if @job_application.save
        format.html { redirect_to job_applications_url }
        format.json { render :show, status: :created, location: @job_application }
      else
        format.html { render :new }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_applications/1
  # PATCH/PUT /job_applications/1.json
  def update

    respond_to do |format|
      if @job_application.update(job_application_params)
        format.html { redirect_to job_applications_url}
        format.json { render :show, status: :ok, location: @job_application }
      else
        format.html { render :edit }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applications/1
  # DELETE /job_applications/1.json
  def destroy
    @job_application.destroy
    respond_to do |format|
      format.html { redirect_to job_applications_url}
      format.json { head :no_content }
    end
  end

  def update_accepted
    @job_application = JobApplication.find(params[:id])
    @job_application.update_attribute(:accepted, params[:attr])
    @post = Post.find(@job_application.post_id)
    redirect_to(@post)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application
      @job_application = JobApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_application_params
        # params.require(:job_application).permit(:ask_rate, :user_id, :post_id)
      params.fetch(:job_application, {}).permit(:ask_rate, :user_id, :post_id)
    end
end
