{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.yazi.keymap = {
		manager.prepend_keymap = [
			{
				on = "j";
				run = "plugin arrow 1";
				desc = "[J] Cursor downwards wrap";
			}
			{
				on = "k";
				run = "plugin arrow -1";
				desc = "[K] Cursor upwards wrap";
			}
			{
				on = "l";
				run = "plugin smart-enter";
				desc = "[L] Enter the child directory, or open the file";
			}
			{
				on = ["P" "t"];
				run = "plugin max-preview";
				desc = "[P]review size [T]oggle";
			}
			{
				on = ["O" "z"];
				run = "shell 'pdf \"$@\"' --confirm";
				desc = "[O]pen in [Z]athura";
			}
			{
				on = ["O" "m"];
				run = "shell 'mpv \"$@\"' --confirm";
				desc = "[O]pen in [M]pv";
			}
			{
				on = ["O" "i"];
				run = "shell 'imv \"$@\"' --confirm";
				desc = "[O]pen in [I]mv";
			}
			{
				on = ["g" "r"];
				run = "shell 'ya pub dds-cd --str \"$(git rev-parse --show-toplevel)\"' --confirm";
				desc = "[G]o to [R]oot of git repo";
			}
			{
				on = ["g" "h"];
				run = "cd $HOME";
				desc = "[G]o to [H]ome";
			}
			{
				on = ["g" "c"];
				run = "cd $HOME/.config";
				desc = "[G]o to [C]onfig";
			}
			{
				on = ["g" "d"];
				run = "cd $DOWNLOADS_DIR";
				desc = "[G]o to [D]ownloads";
			}
			{
				on = ["g" "f"];
				run = "cd $FILES_DIR";
				desc = "[G]o to [F]iles";
			}
			{
				on = ["g" "p"];
				run = "cd $PICTURES_DIR";
				desc = "[G]o to [P]ictures";
			}
			{
				on = ["g" "u"];
				run = "cd $UNI_DIR";
				desc = "[G]o to [U]ni";
			}
		];
	};
}
