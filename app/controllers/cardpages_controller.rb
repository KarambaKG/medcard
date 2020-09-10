class CardpagesController < ApplicationController
  before_action :set_cardpage, only: [:show, :edit, :update, :destroy]

  # GET /cardpages
  # GET /cardpages.json
  def index
    @cardpages = Cardpage.all
  end

  # GET /cardpages/1
  # GET /cardpages/1.json
  def show
  end

  # GET /cardpages/new
  def new
    @cardpage = Cardpage.new
  end

  # GET /cardpages/1/edit
  def edit
  end

  # POST /cardpages
  # POST /cardpages.json
  def create
    @cardpage = Cardpage.new(cardpage_params)

    respond_to do |format|
      if @cardpage.save
        format.html { redirect_to @cardpage, notice: 'Cardpage was successfully created.' }
        format.json { render :show, status: :created, location: @cardpage }
      else
        format.html { render :new }
        format.json { render json: @cardpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardpages/1
  # PATCH/PUT /cardpages/1.json
  def update
    respond_to do |format|
      if @cardpage.update(cardpage_params)
        format.html { redirect_to @cardpage, notice: 'Cardpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardpage }
      else
        format.html { render :edit }
        format.json { render json: @cardpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardpages/1
  # DELETE /cardpages/1.json
  def destroy
    @cardpage.destroy
    respond_to do |format|
      format.html { redirect_to cardpages_url, notice: 'Cardpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardpage
      @cardpage = Cardpage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cardpage_params
      params.require(:cardpage).permit(:title, :h1, :body)
    end
end
