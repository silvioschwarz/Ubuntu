#! /bin/sh

code --install-extension Shan.code-settings-sync
code --install-extension abusaidm.html-snippets
code --install-extension shardulm94.trailing-spaces
code --install-extension eamodio.gitlens
code --install-extension christian-kohler.path-intellisense
code --install-extension Zignd.html-css-class-completion
code --install-extension pranaygp.vscode-css-peek
code --install-extension spywhere.guides
code --install-extension dbankier.vscode-instant-markdown
code --install-extension 2gua.rainbow-brackets
code --install-extension deerawan.vscode-faker
code --install-extension sidthesloth.html5-boilerplate
code --install-extension bierner.color-info
code --install-extension wayou.vscode-todo-highlight
code --install-extension idleberg.icon-fonts
code --install-extension HookyQR.minify
code --install-extension wmaurer.change-case
code --install-extension chrmarti.regex
code --install-extension formulahendry.code-runner
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension dracula-theme.theme-dracula
code --install-extension quicktype.quicktype
code --install-extension Fr43nk.seito-openfile
code --install-extension abusaidm.html-snippets
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension brpaz.file-templates
code --install-extension ms-python.python
code --install-extension MS-CEINTL.vscode-language-pack-de
code --install-extension PeterJausovec.vscode-docker

#xdg-mime default code.desktop text/plain
#sudo update-alternatives --set editor /usr/bin/code
#%%
echo "
code --extensions-dir 

  Set the root path for extensions.
code --list-extensions
  List the installed extensions.
code --show-versions
  Show versions of installed extensions, when using --list-extension.
code --install-extension ( | )
  Installs an extension.
code --uninstall-extension ( | )
  Uninstalls an extension.
code --enable-proposed-api ()
  Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually."
  
code --list-extensions | xargs -L 1 echo code --install-extension


code --install-extension bierner.color-info
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension DotJoshJohnson.xml
code --install-extension ecmel.vscode-html-css
code --install-extension eg2.vscode-npm-script
code --install-extension esbenp.prettier-vscode
code --install-extension michelemelluso.code-beautifier
code --install-extension mrmlnc.vscode-scss
code --install-extension ms-azuretools.vscode-docker
code --install-extension MS-CEINTL.vscode-language-pack-de
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vs-keybindings
code --install-extension PrateekMahendrakar.prettyxml
code --install-extension RandomFractalsInc.geo-data-viewer
code --install-extension ritwickdey.LiveServer
code --install-extension Shan.code-settings-sync
code --install-extension tht13.html-preview-vscode
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons


