class SoftwareController < ApplicationController

    #auth?

BASEURL = 'https://api.bestbuy.com/v1/products'


def show
    softwareID = params[:id]
    url = BASEURL + "(sku=" + softwareID + ")" + "?apiKey=" + ENV.fetch('API_KEY') + "&show=image" + "&format=json"
    response = RestClient.get("#{url}")
    softwareParsed = JSON.parse(response)

    render json: softwareParsed
    
end 

end 