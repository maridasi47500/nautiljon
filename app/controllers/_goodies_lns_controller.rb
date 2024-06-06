class GoodiesLnsController < ApplicationController
  before_action :set__goodies_ln, only: %i[ show edit update destroy ]

  # GET /_goodies_lns or /_goodies_lns.json
  def index
    @_goodies_lns = GoodiesLn.all
  end

  # GET /_goodies_lns/1 or /_goodies_lns/1.json
  def show
  end

  # GET /_goodies_lns/new
  def new
    @_goodies_ln = GoodiesLn.new
  end

  # GET /_goodies_lns/1/edit
  def edit
  end

  # POST /_goodies_lns or /_goodies_lns.json
  def create
    @_goodies_ln = GoodiesLn.new(_goodies_ln_params)

    respond_to do |format|
      if @_goodies_ln.save
        format.html { redirect_to _goodies_ln_url(@_goodies_ln), notice: "Goodies ln was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_lns/1 or /_goodies_lns/1.json
  def update
    respond_to do |format|
      if @_goodies_ln.update(_goodies_ln_params)
        format.html { redirect_to _goodies_ln_url(@_goodies_ln), notice: "Goodies ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_lns/1 or /_goodies_lns/1.json
  def destroy
    @_goodies_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_lns_url, notice: "Goodies ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_ln
      @_goodies_ln = GoodiesLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_ln_params
      params.require(:_goodies_ln).permit(:name)
    end
end
