class AmvsTypesController < ApplicationController
  before_action :set_amvs_type, only: %i[ show edit update destroy ]

  # GET /amvs_types or /amvs_types.json
  def index
    @amvs_types = AmvsType.all
  end

  # GET /amvs_types/1 or /amvs_types/1.json
  def show
  end

  # GET /amvs_types/new
  def new
    @amvs_type = AmvsType.new
  end

  # GET /amvs_types/1/edit
  def edit
  end

  # POST /amvs_types or /amvs_types.json
  def create
    @amvs_type = AmvsType.new(amvs_type_params)

    respond_to do |format|
      if @amvs_type.save
        format.html { redirect_to amvs_type_url(@amvs_type), notice: "Amvs type was successfully created." }
        format.json { render :show, status: :created, location: @amvs_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_types/1 or /amvs_types/1.json
  def update
    respond_to do |format|
      if @amvs_type.update(amvs_type_params)
        format.html { redirect_to amvs_type_url(@amvs_type), notice: "Amvs type was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_types/1 or /amvs_types/1.json
  def destroy
    @amvs_type.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_types_url, notice: "Amvs type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_type
      @amvs_type = AmvsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_type_params
      params.require(:amvs_type).permit(:name)
    end
end
