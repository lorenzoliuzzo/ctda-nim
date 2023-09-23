import ../src/core/prefix as prefix

prefix.defPrefix(minute, "min", 60)
echo minute

echo "SIPrefixes:"
for prefix in prefix.SIPrefixes:
    echo prefix

