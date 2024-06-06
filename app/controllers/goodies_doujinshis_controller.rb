class GoodiesDoujinshisController < ApplicationController
  before_action :set__goodies_doujinshi, only: %i[ show edit update destroy ]

  # GET /_goodies_doujinshis or /_goodies_doujinshis.json
  def index
    @_goodies_doujinshis = GoodiesDoujinshi.all
  end

  # GET /_goodies_doujinshis/1 or /_goodies_doujinshis/1.json
  def show
  end

  # GET /_goodies_doujinshis/new
  def new
    @_goodies_doujinshi = GoodiesDoujinshi.new
  end

  # GET /_goodies_doujinshis/1/edit
  def edit
  end

  # POST /_goodies_doujinshis or /_goodies_doujinshis.json
  def create
    @_goodies_doujinshi = GoodiesDoujinshi.new(_goodies_doujinshi_params)

    respond_to do |format|
      if @_goodies_doujinshi.save
        format.html { redirect_to _goodies_doujinshi_url(@_goodies_doujinshi), notice: "Goodies doujinshi was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_doujinshi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_doujinshis/1 or /_goodies_doujinshis/1.json
  def update
    respond_to do |format|
      if @_goodies_doujinshi.update(_goodies_doujinshi_params)
        format.html { redirect_to _goodies_doujinshi_url(@_goodies_doujinshi), notice: "Goodies doujinshi was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_doujinshi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_doujinshis/1 or /_goodies_doujinshis/1.json
  def destroy
    @_goodies_doujinshi.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_doujinshis_url, notice: "Goodies doujinshi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_doujinshi
      @_goodies_doujinshi = GoodiesDoujinshi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_doujinshi_params
      params.require(:_goodies_doujinshi).permit(:name)
    end
end
