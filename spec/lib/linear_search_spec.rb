require 'spec_helper'
require 'linear_search'

describe Search do
    it "search" do
        arr = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
        x = 110
        search = Search.new
        resultado = search.linear_search(arr, x)
        expect(resultado).to eq(6)
    end
end