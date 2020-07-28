class SoftwareController < ApplicationController

    #auth?


def show
    softwareID = params[:id]
    url = BASEURL + "(sku=" + softwareID + ")" + "?apiKey=" + ENV.fetch('API_KEY') + "&show=image" + "&format=json"
    response = RestClient.get("#{url}")
    softwareParsed = JSON.parse(response)

    render json: softwareParsed
    
end 



def list 
    url = BASEURL + "(type=software)" + "?apiKey=" + ENV.fetch('API_KEY') + "&format=json"
    response = RestClient.get("#{url}")
    listParsed = JSON.parse(response)

    render json: listParsed

end 


end 