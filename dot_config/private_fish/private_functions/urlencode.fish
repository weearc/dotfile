function urlencode
	echo "$argv" |tr -d '\n' |od -An -tx1|tr ' ' %
end
