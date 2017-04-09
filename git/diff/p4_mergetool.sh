MERGE_TOOL=C:/dev/tools/diff/Perforce/p4merge.exe;

MERGED=$1;
LOCAL=$2;
BASE=$3;
REMOTE=$4;

$MERGE_TOOL -nl "BASE" -nr "LOCAL" -nm "BASE -> LOCAL" $BASE $LOCAL &
$MERGE_TOOL -nl "BASE" -nr "REMOTE" -nm "BASE -> REMOTE" $BASE $REMOTE &
$MERGE_TOOL -nb "BASE" -nl "LOCAL" -nr "REMOTE" -nm "BASE -> LOCAL vs. REMOTE: $MERGED" $BASE $LOCAL $REMOTE $MERGED
