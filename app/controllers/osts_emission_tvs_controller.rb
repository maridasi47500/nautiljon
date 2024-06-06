class OstsEmissionTvsController < ApplicationController
  before_action :set_osts_emission_tv, only: %i[ show edit update destroy ]

  # GET /osts_emission_tvs or /osts_emission_tvs.json
  def index
    @osts_emission_tvs = OstsEmissionTv.all
  end

  # GET /osts_emission_tvs/1 or /osts_emission_tvs/1.json
  def show
  end

  # GET /osts_emission_tvs/new
  def new
    @osts_emission_tv = OstsEmissionTv.new
  end

  # GET /osts_emission_tvs/1/edit
  def edit
  end

  # POST /osts_emission_tvs or /osts_emission_tvs.json
  def create
    @osts_emission_tv = OstsEmissionTv.new(osts_emission_tv_params)

    respond_to do |format|
      if @osts_emission_tv.save
        format.html { redirect_to osts_emission_tv_url(@osts_emission_tv), notice: "Osts emission tv was successfully created." }
        format.json { render :show, status: :created, location: @osts_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_emission_tvs/1 or /osts_emission_tvs/1.json
  def update
    respond_to do |format|
      if @osts_emission_tv.update(osts_emission_tv_params)
        format.html { redirect_to osts_emission_tv_url(@osts_emission_tv), notice: "Osts emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_emission_tvs/1 or /osts_emission_tvs/1.json
  def destroy
    @osts_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to osts_emission_tvs_url, notice: "Osts emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_emission_tv
      @osts_emission_tv = OstsEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_emission_tv_params
      params.require(:osts_emission_tv).permit(:name)
    end
end
