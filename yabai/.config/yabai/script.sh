# create a new file for writing - visudo uses the vim editor by default.
# go read about this if you have no idea what is going on.

sudo visudo -f /private/etc/sudoers.d/yabai

# input the line below into the file you are editing.
#  replace <yabai> with the path to the yabai binary (output of: which yabai).
#  replace <user> with your username (output of: whoami).
#  replace <hash> with the sha256 hash of the yabai binary (output of: shasum -a 256 $(which yabai)).
#   this hash must be updated manually after upgrading yabai.

markshmarov ALL=(root) NOPASSWD: sha256:5003f0b1843bfd4e6385d34b671fef9387c099ed8bf8585d1c2336db8f66eb29 /opt/homebrew/bin/yabai --load-sa
