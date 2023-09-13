from ../src/core/prefix import createPrefix, SIPrefixes

createPrefix(minute, "min", 60)
echo minute

echo "SIPrefixes:"
for prefix in SIPrefixes:
    echo prefix