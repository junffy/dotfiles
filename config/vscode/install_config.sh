# Visual Studio Code
# backup
mkdir "$SCRIPT_DIR/backup"
cp "$VSCODE_SETTING_DIR/settings.json" "$SCRIPT_DIR/backup"
cp "$VSCODE_SETTING_DIR/keybindings.json" "$SCRIPT_DIR/backup"
code --list-extensions > "$SCRIPT_DIR/backup/extensions"


rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

cat ./extensions | while read line
do
    code --install-extension $line
done

code --list-extensions > extensions
