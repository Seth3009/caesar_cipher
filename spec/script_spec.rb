require 'spec_helper'
require '../caesar_cipher/script'

RSpec.describe 'Debugging script' do
    describe 'rotate_chars' do
  
      it 'Rotate ascii number by inputed number' do
        string = "What a string!"
        num = 5
  
        expect(caesar_cipher(string, num)).to eq("Bmfy f xywnsl!")
      end
    end
end