class LightNovelsPrepubliesController < ApplicationController
  before_action :set__light_novels_prepubly, only: %i[ show edit update destroy ]

  # GET /_light_novels_prepublies or /_light_novels_prepublies.json
  def index
    @_light_novels_prepublies = LightNovelsPrepublie.all
  end

  # GET /_light_novels_prepublies/1 or /_light_novels_prepublies/1.json
  def show
  end

  # GET /_light_novels_prepublies/new
  def new
    @_light_novels_prepubly = LightNovelsPrepublie.new
  end

  # GET /_light_novels_prepublies/1/edit
  def edit
  end

  # POST /_light_novels_prepublies or /_light_novels_prepublies.json
  def create
    @_light_novels_prepubly = LightNovelsPrepublie.new(_light_novels_prepubly_params)

    respond_to do |format|
      if @_light_novels_prepubly.save
        format.html { redirect_to light_novels_prepubly_url(@_light_novels_prepubly), notice: "Light novels prepublie was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_prepubly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_prepubly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_prepublies/1 or /_light_novels_prepublies/1.json
  def update
    respond_to do |format|
      if @_light_novels_prepubly.update(_light_novels_prepubly_params)
        format.html { redirect_to light_novels_prepubly_url(@_light_novels_prepubly), notice: "Light novels prepublie was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_prepubly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_prepubly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_prepublies/1 or /_light_novels_prepublies/1.json
  def destroy
    @_light_novels_prepubly.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_prepublies_url, notice: "Light novels prepublie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_prepubly
      @_light_novels_prepubly = LightNovelsPrepublie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_prepubly_params
      params.require(:light_novels_prepubly).permit(:name)
    end
end
