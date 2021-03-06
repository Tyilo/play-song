# Updates installed workflow components and exports workflow to project repo

# Path to Alfred preferences PLIST file
alfred_plist=~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist

# Path to directory in which Alfred preferences are synced
alfred_prefs_dir=$(defaults read "$alfred_plist" syncfolder 2> /dev/null)

# If no sync folder is set
if [ -z "$alfred_prefs_dir" ]; then
	# Use default location for preferences
	alfred_prefs_dir=~/Library/"Application Support/Alfred 2"
else
	# Expand ~ to home folder path
	alfred_prefs_dir="${alfred_prefs_dir/#\~/$HOME}"
fi

# Installed Alfred workflows
workflows=("$alfred_prefs_dir"/Alfred.alfredpreferences/workflows/user.workflow.*/)

# Directory for installed workflow
workflow_dir=""

# Name of the workflow file (w/o extension)
workflow_name="Play Song"

# Permanent bundle ID for the workflow
bundle_id="com.calebevans.playsong"

# Path to project repository
project_dir=$(dirname $(dirname "$0"))

# Path to plain-text workflow configuration
project_config="$project_dir/applescripts/config.applescript"

# Path to resulting workflow file
workflow_file="$project_dir/$workflow_name.alfredworkflow"

# Remove trailing whitespace from workflow scripts
echo "Removing trailing whitespace...";
sed -Ei '' "s/[[:space:]]+$//g" "$project_dir"/applescripts/*

# Locate workflow directory from bundle ID
echo "Locating workflow directory..."
for workflow in "${workflows[@]}"
do
	# If workflow PLIST lists the bundle ID
	if plutil -extract bundleid xml1 "$workflow/info.plist" -o - | grep "$bundle_id" &> /dev/null; then
		workflow_dir="${workflow%/}"
		break
	fi
done

# If workflow directory exists
if [ ! -d "$workflow_dir" ]; then
	# Stop script here
	echo "Workflow directory could not be found."
	exit 1
fi

# Copy over latest workflow configuration
echo "Updating configuration..."
cp "$project_dir/applescripts/config.applescript" "$workflow_dir"

# Copy over latest configuration compilation script
echo "Updating configuration compiler..."
cp "$project_dir/utilities/compile-config.sh" "$workflow_dir"

# Copy over latest icons
echo "Updating icons..."
cp "$project_dir/images"/* "$workflow_dir"

# Remove compiled configuration
workflow_config_compiled="$workflow_dir/config.scpt"
if [ -f "$workflow_config_compiled" ]; then
	rm "$workflow_config_compiled"
fi

# Zip together files into workflow
echo "Exporting workflow..."
zip -rj "$workflow_file" "$workflow_dir"

echo "Workflow successfully exported."
