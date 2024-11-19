function urldecode
	echo -n $argv | python -c "import sys, urllib as ul; print ul.unquote(sys.stdin.read());"
end

