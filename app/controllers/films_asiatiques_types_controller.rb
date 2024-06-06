class FilmsAsiatiquesTypesController < ApplicationController
  before_action :set__films_asiatiques_type, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_types or /_films_asiatiques_types.json
  def index
    @_films_asiatiques_types = FilmsAsiatiquesType.all
  end

  # GET /_films_asiatiques_types/1 or /_films_asiatiques_types/1.json
  def show
  end

  # GET /_films_asiatiques_types/new
  def new
    @_films_asiatiques_type = FilmsAsiatiquesType.new
  end

  # GET /_films_asiatiques_types/1/edit
  def edit
  end

  # POST /_films_asiatiques_types or /_films_asiatiques_types.json
  def create
    @_films_asiatiques_type = FilmsAsiatiquesType.new(_films_asiatiques_type_params)

    respond_to do |format|
      if @_films_asiatiques_type.save
        format.html { redirect_to _films_asiatiques_type_url(@_films_asiatiques_type), notice: "Films asiatiques type was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_types/1 or /_films_asiatiques_types/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_type.update(_films_asiatiques_type_params)
        format.html { redirect_to _films_asiatiques_type_url(@_films_asiatiques_type), notice: "Films asiatiques type was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_types/1 or /_films_asiatiques_types/1.json
  def destroy
    @_films_asiatiques_type.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_types_url, notice: "Films asiatiques type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_type
      @_films_asiatiques_type = FilmsAsiatiquesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_type_params
      params.require(:_films_asiatiques_type).permit(:name)
    end
end
