class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    if !current_user.doctor?
      @schedules=Schedule.all
    else 
       @schedules = Schedule.where(:doctor =>current_user.doctor)
    end
  end
  
  def booked_schedules
    if current_user.patient?
      @schedules=Schedule.where(:patient_profile_id => current_user.patient_profile.id)
    elsif current_user.doctor?
       @schedules = Schedule.where(:doctor =>current_user.doctor)
    else
      @schedules=Schedule.all
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params.merge(:doctor =>current_user.doctor))

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  

  
  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
        
    end
  end

  def book
    @schedule=Schedule.find(params[:id])
    @schedule.update_attribute(:booked, true)
    @schedule.update_attribute(:patient_profile_id, current_user.patient_profile.id)
  end
  
  def pay
    @schedule=Schedule.find(params[:id])
    @schedule.update_attribute(:paid, true)
    render "charges/new"
  end
  
  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:title, :start, :end, :booked, :cost, :patient_profile_id)
    end
end
