class SoftwareController < ApplicationController

    #auth?

BASEURL = 'https://api.bestbuy.com/v1/products'


def show
    softwareID = params[:id]
    API_KEY = ENV.fetch('API_KEY')
    url = BASEURL + "(sku=" + softwareID + ")" + "?apiKey=" + API_KEY + "&show=image" + "&format=json"
    response = RestClient.get("#{url}")
    softwareParsed = JSON.parse(response)

    render json: gameParsed
    
end 