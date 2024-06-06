class DramasGeneriquesTypesController < ApplicationController
  before_action :set__dramas_generiques_type, only: %i[ show edit update destroy ]

  # GET /_dramas_generiques_types or /_dramas_generiques_types.json
  def index
    @_dramas_generiques_types = DramasGeneriquesType.all
  end

  # GET /_dramas_generiques_types/1 or /_dramas_generiques_types/1.json
  def show
  end

  # GET /_dramas_generiques_types/new
  def new
    @_dramas_generiques_type = DramasGeneriquesType.new
  end

  # GET /_dramas_generiques_types/1/edit
  def edit
  end

  # POST /_dramas_generiques_types or /_dramas_generiques_types.json
  def create
    @_dramas_generiques_type = DramasGeneriquesType.new(_dramas_generiques_type_params)

    respond_to do |format|
      if @_dramas_generiques_type.save
        format.html { redirect_to dramas_generiques_type_url(@_dramas_generiques_type), notice: "Dramas generiques type was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_generiques_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_generiques_types/1 or /_dramas_generiques_types/1.json
  def update
    respond_to do |format|
      if @_dramas_generiques_type.update(_dramas_generiques_type_params)
        format.html { redirect_to dramas_generiques_type_url(@_dramas_generiques_type), notice: "Dramas generiques type was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_generiques_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_generiques_types/1 or /_dramas_generiques_types/1.json
  def destroy
    @_dramas_generiques_type.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_generiques_types_url, notice: "Dramas generiques type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_generiques_type
      @_dramas_generiques_type = DramasGeneriquesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_generiques_type_params
      params.require(:dramas_generiques_type).permit(:name)
    end
end
