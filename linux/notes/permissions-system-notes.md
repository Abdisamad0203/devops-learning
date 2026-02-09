# Permissions notes

## View permissions
ls -l

## Numeric permissions
chmod 644 file.txt
chmod 600 file.txt
chmod 755 script.sh

## Symbolic permissions
chmod u+x script.sh
chmod g-w file.txt
chmod o=r file.txt

## Ownership
sudo chown root:root file.txt
sudo chown $USER:$USER file.txt

## Directories
x = enter
r = list
w = create/delete
