class UserfacebooksController < ApplicationController
  before_action :set_userfacebook, only: [:show, :edit, :update, :destroy]

  # GET /userfacebooks
  # GET /userfacebooks.json
  def index
    @userfacebooks = Userfacebook.all
  end

  # GET /userfacebooks/1
  # GET /userfacebooks/1.json
  def show
  end

  # GET /userfacebooks/new
  def new
    @userfacebook = Userfacebook.new
  end

  # GET /userfacebooks/1/edit
  def edit
  end

  # POST /userfacebooks
  # POST /userfacebooks.json
  def create
    @userfacebook = Userfacebook.new(userfacebook_params)

    respond_to do |format|
      if @userfacebook.save
        format.html { redirect_to @userfacebook, notice: 'Userfacebook was successfully created.' }
        format.json { render :show, status: :created, location: @userfacebook }
      else
        format.html { render :new }
        format.json { render json: @userfacebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userfacebooks/1
  # PATCH/PUT /userfacebooks/1.json
  def update
    respond_to do |format|
      if @userfacebook.update(userfacebook_params)
        format.html { redirect_to @userfacebook, notice: 'Userfacebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @userfacebook }
      else
        format.html { render :edit }
        format.json { render json: @userfacebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userfacebooks/1
  # DELETE /userfacebooks/1.json
  def destroy
    @userfacebook.destroy
    respond_to do |format|
      format.html { redirect_to userfacebooks_url, notice: 'Userfacebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userfacebook
      @userfacebook = Userfacebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userfacebook_params
      params.require(:userfacebook).permit(:facebook_uid, :access_token, :faceboook_page)
    end
end
