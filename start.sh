# Starts a Vagrant box, with the project files injected into a known folder.
TargetBox=archlinux/lxde

# Hop on over to the box.
cd ./boxes/$TargetBox

# Replace the name of the virtual machine.
sed -i 's/archlinux-lxde/ticketted-dev/' Vagrantfile

# Although, it'd be nice to add a couple of packages, say, git and python (3.x).
echo "" >> additional.sh
echo "yes | pacman -S python" >> additional.sh

# Maybe an IDE, such as VSCod(e|ium) or PyCharm?


# TODO: Start the Vagrant box.
vagrant up
