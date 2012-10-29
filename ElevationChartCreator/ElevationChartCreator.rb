require 'net/http'
require 'json/add/rails'

CHART_BASE_URL = 'http://chart.apis.google.com/chart'


def getElevation(path="36.578581,-118.291994|36.23998,-116.83171",samples="100",sensor="false", *elvtn_args)
	puts "asdd " + path


	elvtn_args.map! {|path| path}
	elvtn_args.map! {|samples| samples}
	elvtn_args.map! {|sensor| sensor}
	
	url = Net::HTTP.get_response('maps.google.com', '/maps/api/elevation/json?')
	response = ActiveSupport::JSON.decode(url)

	
end

        
startStr = "36.578581,-118.291994"   
endStr = "36.23998,-116.83171"
      
pathStr = startStr + "|" + endStr

getElevation(pathStr)
