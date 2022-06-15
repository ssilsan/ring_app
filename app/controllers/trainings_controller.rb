class TrainingsController < ApplicationController
  before_action :set_training, only: %i[show edit update destroy]

  # GET /trainings or /trainings.json
  def index
    @trainings = Training.all
  end

  # GET /trainings/1 or /trainings/1.json
  def show; end

  # GET /trainings/new
  def new
    @training = Training.new
    @fitskill = @training.fitskills.build
  end

  # GET /trainings/1/edit
  def edit; end

  # POST /trainings or /trainings.json
  def create
    @training = Training.new(training_params)

    respond_to do |format|
      if @training.save
        format.html do
          redirect_to training_url(@training),
                      notice: 'Training was successfully created.'
        end
        format.json { render :show, status: :created, location: @training }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @training.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /trainings/1 or /trainings/1.json
  def update
    respond_to do |format|
      if @training.update(training_params)
        format.html do
          redirect_to training_url(@training),
                      notice: 'Training was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @training }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @training.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /trainings/1 or /trainings/1.json
  def destroy
    @training.destroy

    respond_to do |format|
      format.html do
        redirect_to trainings_url,
                    notice: 'Training was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_training
    @training = Training.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def training_params
    params
      .require(:training)
      .permit(
        { images: [] },
        :mileage,
        :kcal,
        :start_time,
        fitskills_attributes: %i[id category fitskill count _destroy],
      )
      .merge(user_id: current_user.id)
  end
end
