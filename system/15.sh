kill $(ps aux | grep 'tail' | awk '{print $2}' | head -n -1)
