class PatientProfilesController < ApplicationController
  before_action :set_patient_profile, only: [:show, :edit, :update, :destroy]

  # GET /patient_profiles
  # GET /patient_profiles.json
  def index
    if current_user.patient?
    @patient_profiles =PatientProfile.where(:user => current_user)
    else
    @patient_profiles = PatientProfile.joins(:user).search(params[:term])
    end
  end

  # GET /patient_profiles/1
  # GET /patient_profiles/1.json
  def show
  end

  # GET /patient_profiles/new
  def new
    @patient_profile = PatientProfile.new
  end

  # GET /patient_profiles/1/edit
  def edit
  end

  # POST /patient_profiles
  # POST /patient_profiles.json
  def create
   # @patient_profile = PatientProfile.new(patient_profile_params.merge(user_id: current_user.id))
     @patient_profile = PatientProfile.new(patient_profile_params.merge(:user => current_user))

    respond_to do |format|
      if @patient_profile.save
        format.html { redirect_to @patient_profile, notice: 'Patient profile was successfully created.' }
        format.json { render :show, status: :created, location: @patient_profile }
      else
        format.html { render :new }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_profiles/1
  # PATCH/PUT /patient_profiles/1.json
  def update
    respond_to do |format|
      if @patient_profile.update(patient_profile_params)
        format.html { redirect_to @patient_profile, notice: 'Patient profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_profile }
      else
        format.html { render :edit }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_profiles/1
  # DELETE /patient_profiles/1.json
  def destroy
    @patient_profile.destroy
    respond_to do |format|
      format.html { redirect_to patient_profiles_url, notice: 'Patient profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_profile
      @patient_profile = PatientProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_profile_params
      params.require(:patient_profile).permit(:gender, :ethnicity, :user_id, :term)
    end
end
