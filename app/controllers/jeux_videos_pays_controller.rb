class JeuxVideosPaysController < ApplicationController
  before_action :set__jeux_videos_pay, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_pays or /_jeux_videos_pays.json
  def index
    @_jeux_videos_pays = JeuxVideosPay.all
  end

  # GET /_jeux_videos_pays/1 or /_jeux_videos_pays/1.json
  def show
  end

  # GET /_jeux_videos_pays/new
  def new
    @_jeux_videos_pay = JeuxVideosPay.new
  end

  # GET /_jeux_videos_pays/1/edit
  def edit
  end

  # POST /_jeux_videos_pays or /_jeux_videos_pays.json
  def create
    @_jeux_videos_pay = JeuxVideosPay.new(_jeux_videos_pay_params)

    respond_to do |format|
      if @_jeux_videos_pay.save
        format.html { redirect_to jeux_videos_pay_url(@_jeux_videos_pay), notice: "Jeux videos pay was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_pays/1 or /_jeux_videos_pays/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_pay.update(_jeux_videos_pay_params)
        format.html { redirect_to jeux_videos_pay_url(@_jeux_videos_pay), notice: "Jeux videos pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_pays/1 or /_jeux_videos_pays/1.json
  def destroy
    @_jeux_videos_pay.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_pays_url, notice: "Jeux videos pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_pay
      @_jeux_videos_pay = JeuxVideosPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_pay_params
      params.require(:jeux_videos_pay).permit(:name)
    end
end
