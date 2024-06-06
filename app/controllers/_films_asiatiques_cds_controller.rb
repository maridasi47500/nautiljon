class FilmsAsiatiquesCdsController < ApplicationController
  before_action :set__films_asiatiques_cd, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_cds or /_films_asiatiques_cds.json
  def index
    @_films_asiatiques_cds = FilmsAsiatiquesCd.all
  end

  # GET /_films_asiatiques_cds/1 or /_films_asiatiques_cds/1.json
  def show
  end

  # GET /_films_asiatiques_cds/new
  def new
    @_films_asiatiques_cd = FilmsAsiatiquesCd.new
  end

  # GET /_films_asiatiques_cds/1/edit
  def edit
  end

  # POST /_films_asiatiques_cds or /_films_asiatiques_cds.json
  def create
    @_films_asiatiques_cd = FilmsAsiatiquesCd.new(_films_asiatiques_cd_params)

    respond_to do |format|
      if @_films_asiatiques_cd.save
        format.html { redirect_to _films_asiatiques_cd_url(@_films_asiatiques_cd), notice: "Films asiatiques cd was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_cds/1 or /_films_asiatiques_cds/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_cd.update(_films_asiatiques_cd_params)
        format.html { redirect_to _films_asiatiques_cd_url(@_films_asiatiques_cd), notice: "Films asiatiques cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_cds/1 or /_films_asiatiques_cds/1.json
  def destroy
    @_films_asiatiques_cd.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_cds_url, notice: "Films asiatiques cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_cd
      @_films_asiatiques_cd = FilmsAsiatiquesCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_cd_params
      params.require(:_films_asiatiques_cd).permit(:name)
    end
end
