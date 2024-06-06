class DramasLnsController < ApplicationController
  before_action :set__dramas_ln, only: %i[ show edit update destroy ]

  # GET /_dramas_lns or /_dramas_lns.json
  def index
    @_dramas_lns = DramasLn.all
  end

  # GET /_dramas_lns/1 or /_dramas_lns/1.json
  def show
  end

  # GET /_dramas_lns/new
  def new
    @_dramas_ln = DramasLn.new
  end

  # GET /_dramas_lns/1/edit
  def edit
  end

  # POST /_dramas_lns or /_dramas_lns.json
  def create
    @_dramas_ln = DramasLn.new(_dramas_ln_params)

    respond_to do |format|
      if @_dramas_ln.save
        format.html { redirect_to _dramas_ln_url(@_dramas_ln), notice: "Dramas ln was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_lns/1 or /_dramas_lns/1.json
  def update
    respond_to do |format|
      if @_dramas_ln.update(_dramas_ln_params)
        format.html { redirect_to _dramas_ln_url(@_dramas_ln), notice: "Dramas ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_lns/1 or /_dramas_lns/1.json
  def destroy
    @_dramas_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_lns_url, notice: "Dramas ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_ln
      @_dramas_ln = DramasLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_ln_params
      params.require(:_dramas_ln).permit(:name)
    end
end
