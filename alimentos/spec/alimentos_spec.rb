require "spec_helper"

describe Alimentos do
  before :each do
    @alimentos1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
    @alimentos2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
    @alimentos3 = Alimento.new("Yogurt", 3.8, 4.8, 3.8)
    @alimentos4 = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
    @alimentos5 = Alimento.new("Ternera", 21.1, 0.0, 3.1)
    @alimentos6 = Alimento.new("Pollo", 20.6, 0.0, 5.6)
    @alimentos7 = Alimento.new("Bacalao", 17.7, 0.0, 0.4)
    @alimentos8 = Alimento.new("Atún", 21.5, 0.0, 15.5)
    @alimentso9 = Alimento.new("Salmón", 19.9, 0.0, 13.6)
    @alimentos10 = Alimento.new("Aceite de oliva", 0.0, 0.2, 99.6)
    @alimentos11 = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
    @alimentos12 = Alimento.new("Azúcar", 0.0, 99.8, 0.0)
    @alimentos13 = Alimento.new("Arroz", 6.8, 77.7, 0.6)
    @alimentos14 = Alimento.new("Lentejas", 23.5, 52.0, 1.4)
    @alimentos15 = Alimento.new("Papas", 2.0, 15.4, 0.1)
    @alimentos16 = Alimento.new("Tomate", 1.0, 3.5, 0.2)
    @alimentos17 = Alimento.new("Cebolla", 1.3, 5.8, 0.3)
    @alimentos18 = Alimento.new("Manzana", 0.3, 12.4, 0.4)
    @alimentos19 = Alimento.new("Plátanos", 1.2, 21.4, 0.2)
  end

  it "Debe existir un nombre para el alimento" do
     expect(@alimentos1.nombre).to be == "Huevo frito"
  end

  it "Debe existir la cantidad de proteínas del alimento en gramos" do
     expect(@alimentos1.proteinas).to be == 14.1
  end

  it "Debe existir la candidad de glucidos del alimento en gramos." do
     expect(@alimentos1.glucidos).to be == 0.0
  end

  it "Debe existir la candidad de grasas del alimento en gramos" do
     expect(@alimentos1.lipidos).to be == 19.5
  end

  it "Existe un metodo para obtener el nombre del alimento" do
     expect(@alimentos1.get_nombre).to be == "Huevo frito"
  end


  it "Existe un metodo para obtener la cantidad de proteinas del alimento" do
     expect(@alimentos1.get_proteinas).to be == 14.1
  end

  it "Existe un metodo para obtener la cantidad de glucidos de un alimento" do
     expect(@alimentos1.get_glucidos).to be == 0.0
  end

  it "Existe un metodo para obtener la cantidad de grasas de un alimento" do
     expect(@alimentos1.get_lipidos).to be == 19.5
  end

  it "Existe un metodo para obtener el alimento formateado" do
     expect(@alimentos1.to_s).to be == "Huevo frito, 14.1, 0.0, 19.5"
  end

  it "Existe un metodo para obtener el valor energetico de un alimento." do
     expect(@alimentos1.get_energetico).to be == 231.9
  end

end

