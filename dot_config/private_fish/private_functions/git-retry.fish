function git-retry
	set REAL_GIT /usr/bin/git
	set RETRY 5
	set DELAY 5
	set COUNT 0
	
	while test $COUNT -lt $RETRY
		$REAL_GIT $argv
		if test $status -eq 0
			set RETRY 0
			break
		end
		set COUNT (math $COUNT+1)
		echo "=================="
		echo "Retry $COUNT"
		echo ""
		sleep $DELAY
	end
end
