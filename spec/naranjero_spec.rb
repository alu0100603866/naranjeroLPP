require 'spec_helper'
require 'naranjero'

describe 'Naranjero' do
    before :each do
        @Naranjero = Arbol.new
    end
	it 'La clase naranjo debe contener: altura, edad y numero naranjas' do
        expect(@Naranjero.edad).to eq(0)
        expect(@Naranjero.altura).to eq(0)
        expect(@Naranjero.contador).to eq(0)
	end
    
    it 'Debe haber un metodo que incremente la edad' do
        @Naranjero.uno_mas
        @Naranjero.uno_mas
        expect(@Naranjero.edad).to eq(2)
        expect(@Naranjero.altura).to eq(1)
    end
    
    it 'Si el arbol es muy viejo deberia morir' do
        @Naranjero.set_edad(25)
        expect(@Naranjero.altura).to eq(0)
        expect(@Naranjero.contador).to eq(0)
    end
    
    it 'Esta muerto?' do
        @Naranjero.set_edad(25)
        expect(@Naranjero.esta_muerto?).to eq(true)
    end
    
    it 'Funciona el metodo recolectar_uno?' do
       expect(@Naranjero.recolectar_una).to eq("No hay fruta")
       @Naranjero.uno_mas
       @Naranjero.uno_mas
       @Naranjero.uno_mas
       @Naranjero.uno_mas
       @Naranjero.uno_mas
       @Naranjero.uno_mas
       expect(@Naranjero.recolectar_una).to eq("Se ha recolectado una fruta")
       @Naranjero.set_edad(26)
       expect(@Naranjero.recolectar_una).to eq("El arbol esta muerto")
    end
        
end
