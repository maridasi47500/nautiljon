class BrevesEmissionTvsController < ApplicationController
  before_action :set__breves_emission_tv, only: %i[ show edit update destroy ]

  # GET /_breves_emission_tvs or /_breves_emission_tvs.json
  def index
    @_breves_emission_tvs = BrevesEmissionTv.all
  end

  # GET /_breves_emission_tvs/1 or /_breves_emission_tvs/1.json
  def show
  end

  # GET /_breves_emission_tvs/new
  def new
    @_breves_emission_tv = BrevesEmissionTv.new
  end

  # GET /_breves_emission_tvs/1/edit
  def edit
  end

  # POST /_breves_emission_tvs or /_breves_emission_tvs.json
  def create
    @_breves_emission_tv = BrevesEmissionTv.new(_breves_emission_tv_params)

    respond_to do |format|
      if @_breves_emission_tv.save
        format.html { redirect_to breves_emission_tv_url(@_breves_emission_tv), notice: "Breves emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_breves_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_emission_tvs/1 or /_breves_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_breves_emission_tv.update(_breves_emission_tv_params)
        format.html { redirect_to breves_emission_tv_url(@_breves_emission_tv), notice: "Breves emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_emission_tvs/1 or /_breves_emission_tvs/1.json
  def destroy
    @_breves_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to breves_emission_tvs_url, notice: "Breves emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_emission_tv
      @_breves_emission_tv = BrevesEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_emission_tv_params
      params.require(:breves_emission_tv).permit(:name)
    end
end
