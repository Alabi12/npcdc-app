class DataCapturingsController < ApplicationController
  before_action :set_data_capturing, only: %i[ show edit update destroy ]

  # GET /data_capturings or /data_capturings.json
  def index
    @data_capturings = DataCapturing.all
  end

  # GET /data_capturings/1 or /data_capturings/1.json
  def show
  end

  # GET /data_capturings/new
  def new
    @data_capturing = DataCapturing.new
  end

  # GET /data_capturings/1/edit
  def edit
  end

  # POST /data_capturings or /data_capturings.json
  def create
    @data_capturing = DataCapturing.new(data_capturing_params)

    respond_to do |format|
      if @data_capturing.save
        format.html { redirect_to data_capturing_url(@data_capturing), notice: "Data capturing was successfully created." }
        format.json { render :show, status: :created, location: @data_capturing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @data_capturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_capturings/1 or /data_capturings/1.json
  def update
    respond_to do |format|
      if @data_capturing.update(data_capturing_params)
        format.html { redirect_to data_capturing_url(@data_capturing), notice: "Data capturing was successfully updated." }
        format.json { render :show, status: :ok, location: @data_capturing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @data_capturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_capturings/1 or /data_capturings/1.json
  def destroy
    @data_capturing.destroy!

    respond_to do |format|
      format.html { redirect_to data_capturings_url, notice: "Data capturing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_capturing
      @data_capturing = DataCapturing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_capturing_params
      params.require(:data_capturing).permit(:project_number, :full_name, :age, :school, :participant_class, :course, :programme, :level, :contact_number)
    end
end
