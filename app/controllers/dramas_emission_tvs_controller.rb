class DramasEmissionTvsController < ApplicationController
  before_action :set__dramas_emission_tv, only: %i[ show edit update destroy ]

  # GET /_dramas_emission_tvs or /_dramas_emission_tvs.json
  def index
    @_dramas_emission_tvs = DramasEmissionTv.all
  end

  # GET /_dramas_emission_tvs/1 or /_dramas_emission_tvs/1.json
  def show
  end

  # GET /_dramas_emission_tvs/new
  def new
    @_dramas_emission_tv = DramasEmissionTv.new
  end

  # GET /_dramas_emission_tvs/1/edit
  def edit
  end

  # POST /_dramas_emission_tvs or /_dramas_emission_tvs.json
  def create
    @_dramas_emission_tv = DramasEmissionTv.new(_dramas_emission_tv_params)

    respond_to do |format|
      if @_dramas_emission_tv.save
        format.html { redirect_to dramas_emission_tv_url(@_dramas_emission_tv), notice: "Dramas emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_emission_tvs/1 or /_dramas_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_dramas_emission_tv.update(_dramas_emission_tv_params)
        format.html { redirect_to dramas_emission_tv_url(@_dramas_emission_tv), notice: "Dramas emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_emission_tvs/1 or /_dramas_emission_tvs/1.json
  def destroy
    @_dramas_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_emission_tvs_url, notice: "Dramas emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_emission_tv
      @_dramas_emission_tv = DramasEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_emission_tv_params
      params.require(:dramas_emission_tv).permit(:name)
    end
end
