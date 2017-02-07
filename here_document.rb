

print <<EOF
	This is the first way of creating 
	here document...
EOF
print <<"End";
	This is second way of creating 
	here document
End
print <<'	FIN'
	hi there
	lo Fthere	
	FIN
	
print <<"FOO", <<"BAR"  # we can stack here documents

	i said FOO
FOO

i said BAR
BAR

