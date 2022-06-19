
New-Item -ItemType SymbolicLink -Target "vim\vimrc" -Path "$home\.vimrc" -Force
New-Item -ItemType SymbolicLink -Target "bash\bashrc" -Path "$home\.bashrc" -Force
New-Item -ItemType SymbolicLink -Target "bash\bash_profile" -Path "$home\.bash_profile" -Force
New-Item -ItemType SymbolicLink -Target "git\gitconfig" -Path "$home\.gitconfig" -Force

