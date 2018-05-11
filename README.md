# resize-script
A shell script to resize and compress images from AWS Bucket using AWS CLI

## Requirements

You need to have the following installed
- image-magick library

## Running the script

Get your file containing list of paths. You can do this via DB if you have stored the paths or using `aws s3 ls` command.

Then give scripts execute permissions

`chmod 700 *.sh`

And then run the script giving path of your txt file containing the paths.

`./read_file.sh path-to-txt-file bucket-name`

Thats it, its gonna compress the images to 80% quality and resize them to 2000 max width.