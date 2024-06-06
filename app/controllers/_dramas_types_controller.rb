class DramasTypesController < ApplicationController
  before_action :set__dramas_type, only: %i[ show edit update destroy ]

  # GET /_dramas_types or /_dramas_types.json
  def index
    @_dramas_types = DramasType.all
  end

  # GET /_dramas_types/1 or /_dramas_types/1.json
  def show
  end

  # GET /_dramas_types/new
  def new
    @_dramas_type = DramasType.new
  end

  # GET /_dramas_types/1/edit
  def edit
  end

  # POST /_dramas_types or /_dramas_types.json
  def create
    @_dramas_type = DramasType.new(_dramas_type_params)

    respond_to do |format|
      if @_dramas_type.save
        format.html { redirect_to _dramas_type_url(@_dramas_type), notice: "Dramas type was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_types/1 or /_dramas_types/1.json
  def update
    respond_to do |format|
      if @_dramas_type.update(_dramas_type_params)
        format.html { redirect_to _dramas_type_url(@_dramas_type), notice: "Dramas type was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_types/1 or /_dramas_types/1.json
  def destroy
    @_dramas_type.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_types_url, notice: "Dramas type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_type
      @_dramas_type = DramasType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_type_params
      params.require(:_dramas_type).permit(:name)
    end
end
