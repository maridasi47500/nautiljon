class DramasProgrammesController < ApplicationController
  before_action :set__dramas_programme, only: %i[ show edit update destroy ]

  # GET /_dramas_programmes or /_dramas_programmes.json
  def index
    @_dramas_programmes = DramasProgramme.all
  end

  # GET /_dramas_programmes/1 or /_dramas_programmes/1.json
  def show
  end

  # GET /_dramas_programmes/new
  def new
    @_dramas_programme = DramasProgramme.new
  end

  # GET /_dramas_programmes/1/edit
  def edit
  end

  # POST /_dramas_programmes or /_dramas_programmes.json
  def create
    @_dramas_programme = DramasProgramme.new(_dramas_programme_params)

    respond_to do |format|
      if @_dramas_programme.save
        format.html { redirect_to dramas_programme_url(@_dramas_programme), notice: "Dramas programme was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_programme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_programmes/1 or /_dramas_programmes/1.json
  def update
    respond_to do |format|
      if @_dramas_programme.update(_dramas_programme_params)
        format.html { redirect_to dramas_programme_url(@_dramas_programme), notice: "Dramas programme was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_programme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_programmes/1 or /_dramas_programmes/1.json
  def destroy
    @_dramas_programme.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_programmes_url, notice: "Dramas programme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_programme
      @_dramas_programme = DramasProgramme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_programme_params
      params.require(:dramas_programme).permit(:name)
    end
end
