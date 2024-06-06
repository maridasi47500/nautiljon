class FilmsAsiatiquesJvsController < ApplicationController
  before_action :set__films_asiatiques_jv, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_jvs or /_films_asiatiques_jvs.json
  def index
    @_films_asiatiques_jvs = FilmsAsiatiquesJv.all
  end

  # GET /_films_asiatiques_jvs/1 or /_films_asiatiques_jvs/1.json
  def show
  end

  # GET /_films_asiatiques_jvs/new
  def new
    @_films_asiatiques_jv = FilmsAsiatiquesJv.new
  end

  # GET /_films_asiatiques_jvs/1/edit
  def edit
  end

  # POST /_films_asiatiques_jvs or /_films_asiatiques_jvs.json
  def create
    @_films_asiatiques_jv = FilmsAsiatiquesJv.new(_films_asiatiques_jv_params)

    respond_to do |format|
      if @_films_asiatiques_jv.save
        format.html { redirect_to films_asiatiques_jv_url(@_films_asiatiques_jv), notice: "Films asiatiques jv was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_jvs/1 or /_films_asiatiques_jvs/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_jv.update(_films_asiatiques_jv_params)
        format.html { redirect_to films_asiatiques_jv_url(@_films_asiatiques_jv), notice: "Films asiatiques jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_jvs/1 or /_films_asiatiques_jvs/1.json
  def destroy
    @_films_asiatiques_jv.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_jvs_url, notice: "Films asiatiques jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_jv
      @_films_asiatiques_jv = FilmsAsiatiquesJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_jv_params
      params.require(:films_asiatiques_jv).permit(:name)
    end
end
