echo "rice ur distro"
echo
echo "chose distro base"
echo "1) Debian Based"
echo "2) Arch Based"
echo

function aw()
{
  mkdir /home/$USER/.config/awesome
}

read INPUT
if [ $INPUT -eq 1 ]
then
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install awesome arandr terminator wavemon
  aw
  sudo mv rc.lua /home/$USER/.config/awesome
  mv deb.rc.lua rc.lua
elif [ $INPUT -eq 2 ]
then
  sudo pacman -Syyu
  sudo pacman -S awesome arandr terminator wavemon
  aw
  mv arch.rc.lua rc.lua
  sudo mv rc.lua /home/$USER/.config/awesome
else
  exit
fi
