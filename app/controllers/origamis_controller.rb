class OrigamisController < ApplicationController
  before_action :set_origami, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /origamis
  # GET /origamis.json
  def index
    @origamis = Origami.all
  end

  # GET /origamis/1
  # GET /origamis/1.json
  def show
  end

  # GET /origamis/new
  def new
    @origami = Origami.new
  end

  # GET /origamis/1/edit
  def edit
  end

  # POST /origamis
  # POST /origamis.json
  def create
    @origami = Origami.new(origami_params)

    respond_to do |format|
      if @origami.save
        format.html { redirect_to @origami, notice: 'Origami was successfully created.' }
        format.json { render :show, status: :created, location: @origami }
      else
        format.html { render :new }
        format.json { render json: @origami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origamis/1
  # PATCH/PUT /origamis/1.json
  def update
    respond_to do |format|
      if @origami.update(origami_params)
        format.html { redirect_to @origami, notice: 'Origami was successfully updated.' }
        format.json { render :show, status: :ok, location: @origami }
      else
        format.html { render :edit }
        format.json { render json: @origami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origamis/1
  # DELETE /origamis/1.json
  def destroy
    @origami.destroy
    respond_to do |format|
      format.html { redirect_to origamis_url, notice: 'Origami was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origami
      @origami = Origami.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origami_params
      params.require(:origami).permit(:name, :description)
    end
end
