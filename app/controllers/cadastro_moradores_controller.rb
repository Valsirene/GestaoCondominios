class CadastroMoradoresController < ApplicationController
  before_action :set_cadastro_moradore, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_moradores
  # GET /cadastro_moradores.json
  def index
    @cadastro_moradores = CadastroMoradore.all
  end

  # GET /cadastro_moradores/1
  # GET /cadastro_moradores/1.json
  def show
  end

  # GET /cadastro_moradores/new
  def new
    @cadastro_moradore = CadastroMoradore.new
  end

  # GET /cadastro_moradores/1/edit
  def edit
  end

  # POST /cadastro_moradores
  # POST /cadastro_moradores.json
  def create
    @cadastro_moradore = CadastroMoradore.new(cadastro_moradore_params)

    respond_to do |format|
      if @cadastro_moradore.save
        format.html { redirect_to @cadastro_moradore, notice: 'Cadastrado com Sucesso!' }
        format.json { render :show, status: :created, location: @cadastro_moradore }
      else
        format.html { render :new }
        format.json { render json: @cadastro_moradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_moradores/1
  # PATCH/PUT /cadastro_moradores/1.json
  def update
    respond_to do |format|
      if @cadastro_moradore.update(cadastro_moradore_params)
        format.html { redirect_to @cadastro_moradore, notice: 'Atualizado com sucesso!!' }
        format.json { render :show, status: :ok, location: @cadastro_moradore }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_moradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_moradores/1
  # DELETE /cadastro_moradores/1.json
  def destroy
    @cadastro_moradore.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_moradores_url, notice: 'Excluido com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_moradore
      @cadastro_moradore = CadastroMoradore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_moradore_params
      params.require(:cadastro_moradore).permit(:nome, :endereco, :email, :telefone)
    end
end
