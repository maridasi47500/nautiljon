class LivresTypesController < ApplicationController
  before_action :set__livres_type, only: %i[ show edit update destroy ]

  # GET /_livres_types or /_livres_types.json
  def index
    @_livres_types = LivresType.all
  end

  # GET /_livres_types/1 or /_livres_types/1.json
  def show
  end

  # GET /_livres_types/new
  def new
    @_livres_type = LivresType.new
  end

  # GET /_livres_types/1/edit
  def edit
  end

  # POST /_livres_types or /_livres_types.json
  def create
    @_livres_type = LivresType.new(_livres_type_params)

    respond_to do |format|
      if @_livres_type.save
        format.html { redirect_to _livres_type_url(@_livres_type), notice: "Livres type was successfully created." }
        format.json { render :show, status: :created, location: @_livres_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_types/1 or /_livres_types/1.json
  def update
    respond_to do |format|
      if @_livres_type.update(_livres_type_params)
        format.html { redirect_to _livres_type_url(@_livres_type), notice: "Livres type was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_types/1 or /_livres_types/1.json
  def destroy
    @_livres_type.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_types_url, notice: "Livres type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_type
      @_livres_type = LivresType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_type_params
      params.require(:_livres_type).permit(:name)
    end
end
