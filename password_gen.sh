max=10
echo "--- ✂  --- ✂  ---"
for i in `seq 1 $max`
do
	openssl rand 6 -base64 | sed 's/^/    /'
	echo "--- ✂  --- ✂  ---"
done
