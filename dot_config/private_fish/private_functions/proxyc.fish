function proxyc
	if test "$argv[1]" = "enable"
		and test "$argv[2]" = ""
		echo "No port provided."
		return 2
	else if test "$argv[1]" = "enable"
		and test "$argv[2]" != ""
		math "0+$argv[2]" 2&>/dev/null
		if test $status -ne 0
			echo "Invalid input: not integer."
		else
			set -g http_proxy "http://127.0.0.1:$argv[2]"
			echo "http_proxy if set at http://127.0.0.1:$argv[2] global"
		end
	else if test "$argv[1]" = "enable"
		and test "$argv[2]" = ""
		if test "$http_proxy" != ""
			echo "http_proxy is set at $http_proxy"
		end
		return 1
	else if test "$argv[1]" = "disable"
		set -e http_proxy
		echo "Http proxy disabled."
	else if test "$argv[1]" = ""
		echo "Usage:
  proxyc		- View this information
  proxyc enable PORT	- Set http proxy on PORT
  proxyc disable	- Dsiable http proxy set"
		echo ""
		return 1
	end
end
