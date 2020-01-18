PATH=$PATH:~/bin
CLOUD1=$(polybar-forecast | awk '{ print $1 }')
CUR_TEMP=$(polybar-forecast | awk '{ print $2 }')
SEP=$(polybar-forecast | awk '{ print $3 }')
CLOUD2=$(polybar-forecast | awk '{ print $4 }')
UC_TEMP=$(polybar-forecast | awk '{ print $5 }')
echo "%{T7}$CLOUD1%{T-} $CUR_TEMP $SEP %{T7}$CLOUD2%{T-} $UC_TEMP"
