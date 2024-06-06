class MangasTypesController < ApplicationController
  before_action :set__mangas_type, only: %i[ show edit update destroy ]

  # GET /_mangas_types or /_mangas_types.json
  def index
    @_mangas_types = MangasType.all
  end

  # GET /_mangas_types/1 or /_mangas_types/1.json
  def show
  end

  # GET /_mangas_types/new
  def new
    @_mangas_type = MangasType.new
  end

  # GET /_mangas_types/1/edit
  def edit
  end

  # POST /_mangas_types or /_mangas_types.json
  def create
    @_mangas_type = MangasType.new(_mangas_type_params)

    respond_to do |format|
      if @_mangas_type.save
        format.html { redirect_to mangas_type_url(@_mangas_type), notice: "Mangas type was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_types/1 or /_mangas_types/1.json
  def update
    respond_to do |format|
      if @_mangas_type.update(_mangas_type_params)
        format.html { redirect_to mangas_type_url(@_mangas_type), notice: "Mangas type was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_types/1 or /_mangas_types/1.json
  def destroy
    @_mangas_type.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_types_url, notice: "Mangas type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_type
      @_mangas_type = MangasType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_type_params
      params.require(:mangas_type).permit(:name)
    end
end
