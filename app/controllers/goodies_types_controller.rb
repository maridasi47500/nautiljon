class GoodiesTypesController < ApplicationController
  before_action :set__goodies_type, only: %i[ show edit update destroy ]

  # GET /_goodies_types or /_goodies_types.json
  def index
    @_goodies_types = GoodiesType.all
  end

  # GET /_goodies_types/1 or /_goodies_types/1.json
  def show
  end

  # GET /_goodies_types/new
  def new
    @_goodies_type = GoodiesType.new
  end

  # GET /_goodies_types/1/edit
  def edit
  end

  # POST /_goodies_types or /_goodies_types.json
  def create
    @_goodies_type = GoodiesType.new(_goodies_type_params)

    respond_to do |format|
      if @_goodies_type.save
        format.html { redirect_to _goodies_type_url(@_goodies_type), notice: "Goodies type was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_types/1 or /_goodies_types/1.json
  def update
    respond_to do |format|
      if @_goodies_type.update(_goodies_type_params)
        format.html { redirect_to _goodies_type_url(@_goodies_type), notice: "Goodies type was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_types/1 or /_goodies_types/1.json
  def destroy
    @_goodies_type.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_types_url, notice: "Goodies type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_type
      @_goodies_type = GoodiesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_type_params
      params.require(:_goodies_type).permit(:name)
    end
end
