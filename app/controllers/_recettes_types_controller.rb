class RecettesTypesController < ApplicationController
  before_action :set__recettes_type, only: %i[ show edit update destroy ]

  # GET /_recettes_types or /_recettes_types.json
  def index
    @_recettes_types = RecettesType.all
  end

  # GET /_recettes_types/1 or /_recettes_types/1.json
  def show
  end

  # GET /_recettes_types/new
  def new
    @_recettes_type = RecettesType.new
  end

  # GET /_recettes_types/1/edit
  def edit
  end

  # POST /_recettes_types or /_recettes_types.json
  def create
    @_recettes_type = RecettesType.new(_recettes_type_params)

    respond_to do |format|
      if @_recettes_type.save
        format.html { redirect_to _recettes_type_url(@_recettes_type), notice: "Recettes type was successfully created." }
        format.json { render :show, status: :created, location: @_recettes_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_recettes_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_recettes_types/1 or /_recettes_types/1.json
  def update
    respond_to do |format|
      if @_recettes_type.update(_recettes_type_params)
        format.html { redirect_to _recettes_type_url(@_recettes_type), notice: "Recettes type was successfully updated." }
        format.json { render :show, status: :ok, location: @_recettes_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_recettes_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_recettes_types/1 or /_recettes_types/1.json
  def destroy
    @_recettes_type.destroy!

    respond_to do |format|
      format.html { redirect_to _recettes_types_url, notice: "Recettes type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__recettes_type
      @_recettes_type = RecettesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _recettes_type_params
      params.require(:_recettes_type).permit(:name)
    end
end
