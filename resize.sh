path="$2"
max_width="$1"
bucket="$3"

start_time=`date +%s`
aws s3 cp "s3://$bucket$2" - | convert -strip -resize $1x -quality 80% - jpg:- | aws s3 cp - "s3://$bucket$2" --acl public-read
end_time=`date +%s`
echo $2 : `expr $end_time - $start_time`s 
