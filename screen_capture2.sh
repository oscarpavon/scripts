base_folder=/home/pavon/
filepath=$( date '+%Y-%m-%d_%H-%M-%S' )_screenshot.png
file=${base_folder}$filepath
sudo scrot -s $file
xclip -selection clipboard -target image/jpg -i < $file
