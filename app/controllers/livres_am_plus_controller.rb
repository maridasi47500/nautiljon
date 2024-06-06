class LivresAmPlusController < ApplicationController
  before_action :set__livres_am_plu, only: %i[ show edit update destroy ]

  # GET /_livres_am_plus or /_livres_am_plus.json
  def index
    @_livres_am_plus = LivresAmPlu.all
  end

  # GET /_livres_am_plus/1 or /_livres_am_plus/1.json
  def show
  end

  # GET /_livres_am_plus/new
  def new
    @_livres_am_plu = LivresAmPlu.new
  end

  # GET /_livres_am_plus/1/edit
  def edit
  end

  # POST /_livres_am_plus or /_livres_am_plus.json
  def create
    @_livres_am_plu = LivresAmPlu.new(_livres_am_plu_params)

    respond_to do |format|
      if @_livres_am_plu.save
        format.html { redirect_to _livres_am_plu_url(@_livres_am_plu), notice: "Livres am plu was successfully created." }
        format.json { render :show, status: :created, location: @_livres_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_am_plus/1 or /_livres_am_plus/1.json
  def update
    respond_to do |format|
      if @_livres_am_plu.update(_livres_am_plu_params)
        format.html { redirect_to _livres_am_plu_url(@_livres_am_plu), notice: "Livres am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_am_plus/1 or /_livres_am_plus/1.json
  def destroy
    @_livres_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_am_plus_url, notice: "Livres am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_am_plu
      @_livres_am_plu = LivresAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_am_plu_params
      params.require(:_livres_am_plu).permit(:name)
    end
end
