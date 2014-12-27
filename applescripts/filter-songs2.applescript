-- filters songs by the typed query --

-- load workflow configuration
do shell script "bash ./compile-config.sh"
set config to load script POSIX file ((do shell script "pwd") & "/config.scpt")

-- constructs song result list as XML string
on getSongResultListXml(query)

	global config

	-- search iTunes library for the given query
	tell application "iTunes"

		-- search Music playlist for songs matching query
		set theSongs to (search playlist 2 for query)

		-- inform user that no results were found (prompt to switch to iTunes instead)
		if length of theSongs is 0 then

			addResult({uid:"no-results", arg:"null", valid:"no", title:"No Songs Found", subtitle:("No songs matching '" & query & "'"), icon:defaultIconName of config}) of config

		else

			set songPriorities to {{}, {}, {}, {}}

			repeat with theSong in theSongs
				-- get song information
				set songId to (get database ID of theSong)
				set songName to name of theSong
				set songArtist to artist of theSong
				set songAlbum to album of theSong
				set songKind to kind of theSong

				-- exclude digital booklets from results
				if songKind contains (songDescriptor of config) then
					set songArtworkPath to getSongArtworkPath(theSong) of config

					set info to {id:songId, name:songName, artist:songArtist, album:songAlbum, kind:songKind, artworkPath:songArtworkPath}

					if songName begins with query then
						set n to 1
					else if songName contains " " & query then
						set n to 2
					else if songName contains query then
						set n to 3
					else
						set n to 4
					end if
					set item n of songPriorities to item n of songPriorities & {info}

					if length of item 1 of songPriorities is greater than (resultLimit of config) then exit repeat
				end if

			end repeat

			-- loop through the results to create the XML data
			set songIndex to 1
			set done to false

			repeat with songList in songPriorities
				repeat with songInfo in songList
					-- limit number of results
					if songIndex is greater than (resultLimit of config) then
						set done to true
						exit repeat
					end if

					-- add song information to XML
					addResult({uid:("song-" & id of songInfo), arg:id of songInfo as text, valid:"yes", title:name of songInfo, subtitle:artist of songInfo, icon:artworkPath of songInfo}) of config

					set songIndex to songIndex + 1
				end repeat

				if done then
					exit repeat
				end if

			end repeat

		end if

	end tell

	return getResultListXml() of config

end getSongResultListXml

createArtworkCache() of config
getSongResultListXml("{query}")
