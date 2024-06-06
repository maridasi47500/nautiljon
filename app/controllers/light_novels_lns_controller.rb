class LightNovelsLnsController < ApplicationController
  before_action :set__light_novels_ln, only: %i[ show edit update destroy ]

  # GET /_light_novels_lns or /_light_novels_lns.json
  def index
    @_light_novels_lns = LightNovelsLn.all
  end

  # GET /_light_novels_lns/1 or /_light_novels_lns/1.json
  def show
  end

  # GET /_light_novels_lns/new
  def new
    @_light_novels_ln = LightNovelsLn.new
  end

  # GET /_light_novels_lns/1/edit
  def edit
  end

  # POST /_light_novels_lns or /_light_novels_lns.json
  def create
    @_light_novels_ln = LightNovelsLn.new(_light_novels_ln_params)

    respond_to do |format|
      if @_light_novels_ln.save
        format.html { redirect_to light_novels_ln_url(@_light_novels_ln), notice: "Light novels ln was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_lns/1 or /_light_novels_lns/1.json
  def update
    respond_to do |format|
      if @_light_novels_ln.update(_light_novels_ln_params)
        format.html { redirect_to light_novels_ln_url(@_light_novels_ln), notice: "Light novels ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_lns/1 or /_light_novels_lns/1.json
  def destroy
    @_light_novels_ln.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_lns_url, notice: "Light novels ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_ln
      @_light_novels_ln = LightNovelsLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_ln_params
      params.require(:light_novels_ln).permit(:name)
    end
end
