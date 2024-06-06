class GeneriquesTypesController < ApplicationController
  before_action :set__generiques_type, only: %i[ show edit update destroy ]

  # GET /_generiques_types or /_generiques_types.json
  def index
    @_generiques_types = GeneriquesType.all
  end

  # GET /_generiques_types/1 or /_generiques_types/1.json
  def show
  end

  # GET /_generiques_types/new
  def new
    @_generiques_type = GeneriquesType.new
  end

  # GET /_generiques_types/1/edit
  def edit
  end

  # POST /_generiques_types or /_generiques_types.json
  def create
    @_generiques_type = GeneriquesType.new(_generiques_type_params)

    respond_to do |format|
      if @_generiques_type.save
        format.html { redirect_to _generiques_type_url(@_generiques_type), notice: "Generiques type was successfully created." }
        format.json { render :show, status: :created, location: @_generiques_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques_types/1 or /_generiques_types/1.json
  def update
    respond_to do |format|
      if @_generiques_type.update(_generiques_type_params)
        format.html { redirect_to _generiques_type_url(@_generiques_type), notice: "Generiques type was successfully updated." }
        format.json { render :show, status: :ok, location: @_generiques_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques_types/1 or /_generiques_types/1.json
  def destroy
    @_generiques_type.destroy!

    respond_to do |format|
      format.html { redirect_to _generiques_types_url, notice: "Generiques type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generiques_type
      @_generiques_type = GeneriquesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generiques_type_params
      params.require(:_generiques_type).permit(:name)
    end
end
