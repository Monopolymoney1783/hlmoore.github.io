function get(url)
	return uluagetrequest(url)
end
function post(url,postdata)
	return uluapostrequest(url,postdata)
end
requests = {}
requests.get = get
requests.post = post
return ""