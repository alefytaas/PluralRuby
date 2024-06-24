require 'rspec'
require_relative 'plural'

RSpec.describe 'String#plural' do
  it "adiciona 'es' a palavras terminadas em 'x', 's', 'z', 'h', 'r'" do
    expect("caixa".plural).to eq("caixas")
    expect("gás".plural).to eq("gases")
    expect("arroz".plural).to eq("arrozes")
    expect("pintor".plural).to eq("pintores")
    expect("abajur".plural).to eq("abajures")
  end

  it "substitui 'm' por 'ns'" do
    expect("homem".plural).to eq("homens")
    expect("bom".plural).to eq("bons")
  end

  it "substitui 'l' por 'is'" do
    expect("papel".plural).to eq("papéis")
    expect("animal".plural).to eq("animais")
  end

  it "adiciona 's' a palavras terminadas em 'a', 'e', 'i', 'o' (exceto 'ão'), 'u', 'ú'" do
    expect("casa".plural).to eq("casas")
    expect("chave".plural).to eq("chaves")
    expect("pati".plural).to eq("patis")
    expect("carro".plural).to eq("carros")
    expect("churrasco".plural).to eq("churrascos")
    expect("baú".plural).to eq("baús")
  end

  it "substitui 'ão' por 'ões', 'ãos' ou 'ães' dependendo do contexto" do
    expect("pão".plural).to eq("pães")
    expect("coração".plural).to eq("corações")
    expect("irmão".plural).to eq("irmãos")
    expect("caminhão".plural).to eq("caminhões")
  end
end
