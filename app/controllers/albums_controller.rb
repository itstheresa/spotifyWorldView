class AlbumsController < ApplicationController
  def index #controls what happens after search
  	if !params[:album_name].empty?
     @albums = RSpotify::Album.search(params[:album_name]) #utilizes Spotify search
     #create hashes of countries to names and empty arrays
     @countryNames = {"AD" => "Andorra", "AR" => "Argentina","AU" => "Australia","AT" => "Austria",
		"BE" => "Belgium","BO" => "Bolivia","BR" => "Brazil","BG" => "Bulgaria","CA" => "Canada","CL" => "Chile",
		"CO" => "Colombia","CR" => "Costa Rica","CY" => "Cyprus","CZ" => "Czech Republic","DK" => "Denmark",
		"DO" => "Dominican Republic","EC" => "Ecuador","SV" => "El Salvador","EE" => "Estonia","FI" => "Finland",
		"FR" => "France","DE" => "Germany","GR" => "Greece","GT" => "Guatemala","HN" => "Honduras",
		"HK" => "Hong Kong","HU" => "Hungary","IS" => "Iceland","IE" => "Republic of Ireland","IT" => "Italy",
		"LV" => "Latvia","LI" => "Liechtenstein","LT" => "Lithuania","LU" => "Luxembourg","MY" => "Malaysia",
		"MT" => "Malta","MX" => "Mexico","MC" => "Monaco","NL" => "Netherlands","NZ" => "New Zealand",
		"NI" => "Nicaragua","NO" => "Norway","PA" => "Panama","PY" => "Paraguay","PE" => "Peru",
		"PH" => "Philippines","PL" => "Poland","PT" => "Portugal","RO" => "Romania","ES" => "Spain",
		"SG" => "Singapore","SK" => "Slovakia","SI" => "Slovenia","SE" => "Sweden","CH" => "Switzerland",
		"TW" => "Taiwan","TR" => "Turkey","GB" => "United Kingdom","US" => "United States","UY" => "Uruguay"}
	 @countries = {"AD" => [], "AR" => [],"AU" => [],"AT" => [],
		"BE" => [],"BO" => [],"BR" => [],"BG" => [],"CA" => [],"CL" => [],
		"CO" => [],"CR" => [],"CY" => [],"CZ" => [],"DK" => [],
		"DO" => [],"EC" => [],"SV" => [],"EE" => [],"FI" => [],
		"FR" => [],"DE" => [],"GR" => [],"GT" => [],"HN" => [],
		"HK" => [],"HU" => [],"IS" => [],"IE" => [],"IT" => [],
		"LV" => [],"LI" => [],"LT" => [],"LU" => [],"MY" => [],
		"MT" => [],"MX" => [],"MC" => [],"NL" => [],"NZ" => [],
		"NI" => [],"NO" => [],"PA" => [],"PY" => [],"PE" => [],
		"PH" => [],"PL" => [],"PT" => [],"RO" => [],"ES" => [],
		"SG" => [],"SK" => [],"SI" => [],"SE" => [],"CH" => [],
		"TW" => [],"TR" => [],"GB" => [],"US" => [],"UY" => []}
	else
     redirect_to root_path #if nothing is entered in search bar, nothing happens
    end
  end

  def show #finds specific album from Spotify that is selected after searching
  	@album = RSpotify::Album.find(params[:id])
  end
  
  def countries #leads to page of a specific country to list available albums from search results
  	@country = countryCode
  end
end
