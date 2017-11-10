#pruebas
require "spec_helper"

describe Alimentos do

  context Alimento do
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

  context Grupo do
	before :each do
		@alimentos1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimentos2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimentos3 = Alimento.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo.new(
		"Huevos, lacteos y helados",
		[ @alimentos1, @alimentos2, @alimentos3 ])
	end

	it 'Prueba Grupo' do
		expect(@migrupo1.to_s).to eq("HUEVOS, LACTEOS Y HELADOS\n-Huevo frito, 14.1, 0.0, 19.5,\n-Leche vaca, 3.3, 4.8, 3.2,\n-Yogurt, 3.8, 4.8, 3.8")
	end

	it 'Prueba de pertenencia a Grupo (Clase Madre)' do
		expect(@migrupo1.is_a? Grupo).to eq true
	end

	it 'Prueba de no pertenencia a Grupo_lacteos' do
		expect(@migrupo1.is_a? Grupo_lacteos).to eq false
	end

	it 'Prueba de no pertenencia a Grupo_carnes' do
		expect(@migrupo1.is_a? Grupo_carnes).to eq false
	end

	it 'La clase del objeto Grupo' do
		expect(@migrupo1.class).to eq(Grupo)
	end
  end

  context Grupo_lacteos do
	before :each do
		@alimentos1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimentos2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimentos3 = Alimento.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo_lacteos.new(
		"Huevos, lacteos y helados",
		[ @alimentos1, @alimentos2, @alimentos3 ])
	end

	it 'Prueba Grupo_lacteos' do	
		expect(@migrupo1.to_s).to eq("HUEVOS, LACTEOS Y HELADOS\n-Huevo frito, 14.1, 0.0, 19.5,\n-Leche vaca, 3.3, 4.8, 3.2,\n-Yogurt, 3.8, 4.8, 3.8")
	end

	it 'Prueba de pertenencia a Grupo (Clase madre)' do
		expect(@migrupo1.is_a? Grupo).to eq true
	end

	it 'Prueba de no instancia de Grupo (Clase madre)' do
		expect(@migrupo1.instance_of? Grupo).to equal false
	end

	it 'La clase del objeto Grupo_lacteos' do
		expect(@migrupo1.class).to eq(Grupo_lacteos)
	end

	it 'Prueba de pertenencia a la superclase Grupo' do
		expect(@migrupo1.class.superclass).to eq(Grupo)
	end

	it 'Prueba de pertenencia a Grupo_lacteos (Clase hija)' do
		expect(@migrupo1.is_a? Grupo_lacteos).to eq true
	end

	it 'Prueba de pertenencia a Grupo_carnes (Clase hija)' do
		expect(@migrupo1.is_a? Grupo_carnes).to eq false
	end

	it 'Prueba de no pertenencia a Grupo_carnes (clase hija) respond_to' do
		expect(@migrupo1.respond_to? "Menu_carnes").to eq false
	end

  end
#----------------------------------------------------------------------------
  context Grupo_carnes do
        before :each do
                @alimentos4 = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
                @alimentos5 = Alimento.new("Ternera", 21.1, 0.0, 3.1)
                @alimentos6 = Alimento.new("Pollo", 26.6, 0.0, 5.6)
                @migrupo2 = Grupo_carnes.new(
                "Cerdo, Ternera y Pollo",
                [ @alimentos4, @alimentos5, @alimentos6 ])
        end

        it 'Prueba Grupo_carnes' do
                expect(@migrupo2.to_s).to eq("CERDO, TERNERA Y POLLO\n-Cerdo, 21.5, 0.0, 6.3,\n-Ternera, 21.1, 0.0, 3.1,\n-Pollo, 26.6, 0.0, 5.6")
        end

        it 'Prueba de pertenencia a Grupo (Clase madre)' do
                expect(@migrupo2.is_a? Grupo).to eq true
        end

        it 'Prueba de no instancia de Grupo (Clase madre)' do
                expect(@migrupo2.instance_of? Grupo).to equal false
        end

        it 'La clase del objeto Grupo_carnes' do
                expect(@migrupo2.class).to eq(Grupo_carnes)
        end

        it 'Prueba de pertenencia a la superclase Grupo' do
                expect(@migrupo2.class.superclass).to eq(Grupo)
        end

        it 'Prueba de pertenencia a Grupo_carnes (Clase hija)' do
                expect(@migrupo2.is_a? Grupo_carnes).to eq true
        end

        it 'Prueba de pertenencia a Grupo_lacteos (Clase hija)' do
                expect(@migrupo2.is_a? Grupo_lacteos).to eq false
        end

        it 'Prueba de no pertenencia a Grupo_lacteos (clase hija) respond_to' do
                expect(@migrupo2.respond_to? "Menu_lacteos").to eq false
        end

  end


#----------------------------------------------------------------------------
  context Nodo do
	before :each do
		@alimentos1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimentos2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimentos3 = Alimento.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo_lacteos.new(
		"Huevos, lacteos y helados",
		[ @alimentos1, @alimentos2, @alimentos3 ])

		@nodo1=Nodo.new(@migrupo1,nil,nil)
	end

	it 'Existe valor de nodo' do
	      expect(@nodo1.value).to eq(@migrupo1)
	end

	it 'Siguiente de nodo es nil' do
		expect(@nodo1.next).to equal(nil)
	end
  end
  
  context Lista do
       before :each do			
	       @alimentos1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
               @alimentos2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
	       @alimentos3 = Alimento.new("Yogurt", 3.8, 4.8, 3.8)
	       @alimentos4 = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
	       @alimentos5 = Alimento.new("Ternera", 21.1, 0.0, 3.1)
	       @alimentos6 = Alimento.new("Pollo", 20.6, 0.0, 5.6)
	       @alimentos7 = Alimento.new("Bacalao", 17.7, 0.0, 0.4)
	       @alimentos8 = Alimento.new("Atún", 21.5, 0.0, 15.5)
	       @alimentos9 = Alimento.new("Salmón", 19.9, 0.0, 13.6)
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
	       @migrupo1 = Grupo.new(
	       "Huevos, lacteos y helados",
	       [ @alimentos1, @alimentos2, @alimentos3 ])
	       @migrupo2 = Grupo.new(
	       "Cerdo, Ternera y Pollo",
	       [ @alimentos4, @alimentos5, @alimentos6 ])
	       @migrupo3 = Grupo.new(
	       "Pescados y mariscos",
	       [ @alimentos7, @alimentos8, @alimentos9 ])
	       @migrupo4 = Grupo.new(
	       "Alimentos grasos",
	       [ @alimentos10, @alimentos11, @alimentos12 ])
	       @lista1 = Lista.new(nil,nil)
	 end

	 it 'Debe existir una Lista con su cabeza' do
	         @lista1.insertar(@migrupo1)
	      	 expect(@lista1.cabeza.value).to eq(@migrupo1)
	 end

	 it 'Se puede insertar un elemento' do 
        	 @lista1.insertar(@migrupo1)
	         expect(x = @lista1.cabeza.value).to equal(@migrupo1)
  	 end

	 it 'Se pueden insertar varios elementos' do
      		 @lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
		 expect(x =@lista1.cabeza.value).to equal(@migrupo4)
	 end

	 it 'Se extrae el primer elemento de la lista' do
        	 @lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
	         @lista1.extraer_inicio()
        	 expect(x =@lista1.cabeza.value).to equal(@migrupo4)
	 end
  end
end
