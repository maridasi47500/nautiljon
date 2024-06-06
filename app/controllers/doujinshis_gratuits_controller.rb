class DoujinshisGratuitsController < ApplicationController
  before_action :set__doujinshis_gratuit, only: %i[ show edit update destroy ]

  # GET /_doujinshis_gratuits or /_doujinshis_gratuits.json
  def index
    @_doujinshis_gratuits = DoujinshisGratuit.all
  end

  # GET /_doujinshis_gratuits/1 or /_doujinshis_gratuits/1.json
  def show
  end

  # GET /_doujinshis_gratuits/new
  def new
    @_doujinshis_gratuit = DoujinshisGratuit.new
  end

  # GET /_doujinshis_gratuits/1/edit
  def edit
  end

  # POST /_doujinshis_gratuits or /_doujinshis_gratuits.json
  def create
    @_doujinshis_gratuit = DoujinshisGratuit.new(_doujinshis_gratuit_params)

    respond_to do |format|
      if @_doujinshis_gratuit.save
        format.html { redirect_to doujinshis_gratuit_url(@_doujinshis_gratuit), notice: "Doujinshis gratuit was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_gratuit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_gratuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_gratuits/1 or /_doujinshis_gratuits/1.json
  def update
    respond_to do |format|
      if @_doujinshis_gratuit.update(_doujinshis_gratuit_params)
        format.html { redirect_to doujinshis_gratuit_url(@_doujinshis_gratuit), notice: "Doujinshis gratuit was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_gratuit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_gratuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_gratuits/1 or /_doujinshis_gratuits/1.json
  def destroy
    @_doujinshis_gratuit.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_gratuits_url, notice: "Doujinshis gratuit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_gratuit
      @_doujinshis_gratuit = DoujinshisGratuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_gratuit_params
      params.require(:doujinshis_gratuit).permit(:name)
    end
end
