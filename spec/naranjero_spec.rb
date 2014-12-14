require 'spec_helper'
require 'naranjero'

describe 'Naranjero' do
    before :all do
        @Naranjero = Arbol.new
    end
	it 'La clase naranjo debe contener: altura, edad y numero naranjas' do
        expect(@Naranjero.edad).to eq(0)
        expect(@Naranjero.altura).to eq(0)
        expect(@Naranjero.edad).to eq(0)
	end
    
    it 'Debe haber un metodo que incremente la edad' do
        @Naranjero.uno_mas
        @Naranjero.uno_mas
        expect(@Naranjero.edad).to eq(2)
        expect(@Naranjero.altura).to eq(1)
    end
end
