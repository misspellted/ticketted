# Capture the current working directory.
CurrWorkDir=$(pwd)

# Clean up any instances of the target box.
TargetBox=archlinux/lxde

cd boxes/$TargetBox
echo "Destroying the virtual machine (if it exists)."
vagrant destroy -f

# Restore the submodule by discarding any changes.
cd $CurrWorkDir/boxes
echo "Restoring the boxes submodule."
git restore "*"
