function pb
	set cmd $argv
	if test -z "$cmd"
		echo "Usage: pb <cmd>"
		return 1
	end

	eval $cmd | curl -F "c=@-" "https://fars.ee/"
end
