#!/usr/bin/env zsh
# Publish a new version.

tsformat="%Y-%m-%d %H:%M %z"
script=$0
dir=$(dirname $script)
cfg="$dir/docs/_config.yml"
index="$dir/docs/index.markdown" 
work_branch=main
publich_branch=latest

help() {
	cat << EOF
$script [-h|--help] [-n|--noop] [-v|--version V] [-t|--timestamp T]

Where the options are the following:
-h | --help            Print this message and exit
-n | --noop            Just print the commands but don't make changes.
-v | --version V       Use version string "V", which should be of the format
                       "X.Y.Z". Without this option the current value of
                       "last_version" in _config.yml is extracted (e.g., 1.0.1) 
                       and the last digit is incremented.
-t | --timestamp "T"   Use this timestamp "T", which you'll need to quote on
                       the command line, because it must be of the form
                       "$tsformat". Without this option, the current 
                       system time is used.
EOF
}

error() {
	for arg in "$@"
	do
		echo "ERROR: $arg"
	done
	help
	exit 1
}

while [[ $# -gt 0 ]]
do
	case $1 in
		-h|--h*)
			help
			exit 0
			;;
		-n|--n*)
			NOOP=echo
			;;
		-v|--v*)
			shift
			version="$1"
			;;
		-t|--t*)
			shift
			timestamp="$1"
			;;
		*)
			error "Unrecognized option: $1"
			;;
	esac
	shift
done

[[ -z "$timestamp" ]] && timestamp=$(date +"$tsformat")
date -j -f "$tsformat" +"$tsformat" "$timestamp" > /dev/null 2>&1
[[ $? -ne 0 ]] && error "Invalid timestamp format for timestamp: $timestamp" "Required format: $tsformat"

old_version=$(grep last_version "$cfg" | sed -e 's/^[ ]*last_version:[ ]*//')
base=${old_version%.*}
ext=${old_version##*.}
let ext1=$ext+1
new_default_version=${base}.${ext1}
[[ -z "$version" ]] && version="$new_default_version"

echo "Using the following values:"
echo "Version:   $version (previous version: $old_version)"
echo "Timestamp: $timestamp"

branch=$(git branch --show-current)
[[ "$branch" != "$work_branch" ]] && error "You must be on the $work_branch branch to run this command."

cfg_temp=${cfg}.$$
if [[ -z "$NOOP" ]]
then
	sed -e "s/\s*last_version:.*/last_version: $version/" $cfg > $cfg_temp
	sed -e "s/\s*last_modified_timestamp:.*/last_modified_timestamp: $timestamp/" $cfg_temp > $cfg
	rm $cfg_temp
else
	$NOOP "sed -e \"s/\s*last_version:.*/last_version: $version/\" $cfg > $cfg_temp"
	$NOOP "sed -e \"s/\s*last_modified_timestamp:.*/last_modified_timestamp: $timestamp/\" $cfg_temp > $cfg"
	$NOOP rm $cfg_temp
fi

# Sanity checks:
if [[ -z $NOOP ]]
then
	grep "last_version: $version" $cfg -q || error "New version $version not found in $cfg"
	grep "last_modified_timestamp: $timestamp" $cfg -q || error "New timestamp $timestamp not found in $cfg"
fi

# Update the index page table with versions.
latest_history_line=$(grep '\*\*History\*\*' "$index")
latest_history=$(echo $latest_history_line | sed -e 's/[^V]*V\([^, ]*\).*/\1/')

if [[ "$latest_history" = "$version" ]]
then
	echo "New version ($version) is the same as the old version in $index. Not changing that file."
else
	mv $index $index.$$
	cat $index.$$ | while read line
	do
		case $line in
			**History**.*)
				ymd=$(date -j -f "$tsformat" +"%Y-%m-%d" "$timestamp")
				echo "| **History** | V$version, $ymd |"
				old_line=$(echo "$line" | sed -e 's/\*\*History\*\*/           /')
				echo $old_line
				;;
			*)
				echo "$line"
				;;
		esac
	done > $index
	rm $index.$$
fi

# Commit and push the updated config file:
if [[ "$latest_history" = "$version" ]]
then
	$NOOP git commit -m "Updated version and timestamps in $cfg" $cfg
else
	$NOOP git commit -m "Updated version and timestamps in $cfg and $index" $cfg $index
fi
$NOOP git push

# Merge to latest and push to publish.

$NOOP git checkout $publich_branch
$NOOP git merge $work_branch
$NOOP git push
$NOOP git checkout $work_branch

