#!/bin/zsh
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles
log_file=~/install_progress_log.txt
zsh_custom_dir=~/.oh-my-zsh/custom

#==============
# Create symlinks in the home folder
#==============
ln -sf $dotfiles_dir/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/.config/coc ~/.config/coc
ln -sf $dotfiles_dir/.config/configstore ~/.config/configstore
ln -sf $dotfiles_dir/.gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/.npmrc ~/.npmrc
ln -sf $dotfiles_dir/zsh_custom/alias.zsh $zsh_custom_dir/alias.zsh
ln -sf $dotfiles_dir/zsh_custom/bullet-train.zsh $zsh_custom_dir/bullet-train.zsh
ln -sf $dotfiles_dir/zsh_custom/themes/bullet-train.zsh-theme $zsh_custom_dir/themes/bullet-train.zsh-theme

#==============
# Set zsh as the default shell
#==============

==============
# Give the user a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
echo
echo "Enjoy -Jarrod"
rm $log_file
