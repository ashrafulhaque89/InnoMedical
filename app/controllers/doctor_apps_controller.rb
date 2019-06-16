class DoctorAppsController < ApplicationController
  before_action :set_doctor_app, only: [:show, :edit, :update, :destroy]

  # GET /doctor_apps
  # GET /doctor_apps.json
  def index
    @doctor_apps = DoctorApp.all
  end

  # GET /doctor_apps/1
  # GET /doctor_apps/1.json
  def show
  end

  # GET /doctor_apps/new
  def new
    @doctor_app = DoctorApp.new
  end

  # GET /doctor_apps/1/edit
  def edit
  end

  # POST /doctor_apps
  # POST /doctor_apps.json
  def create
    @doctor_app = DoctorApp.new(doctor_app_params)

    respond_to do |format|
      if @doctor_app.save
        format.html { redirect_to @doctor_app, notice: 'Doctor app was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_app }
      else
        format.html { render :new }
        format.json { render json: @doctor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_apps/1
  # PATCH/PUT /doctor_apps/1.json
  def update
    respond_to do |format|
      if @doctor_app.update(doctor_app_params)
        format.html { redirect_to @doctor_app, notice: 'Doctor app was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_app }
      else
        format.html { render :edit }
        format.json { render json: @doctor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_apps/1
  # DELETE /doctor_apps/1.json
  def destroy
    @doctor_app.destroy
    respond_to do |format|
      format.html { redirect_to doctor_apps_url, notice: 'Doctor app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_app
      @doctor_app = DoctorApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_app_params
      params.require(:doctor_app).permit(:doctor_id, :appointment_id)
    end
end
