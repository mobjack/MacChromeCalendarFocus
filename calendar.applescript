tell application "Google Chrome"
	repeat with w in windows
		set i to 1
		repeat with t in tabs of w
			if URL of t starts with "https://calendar.google.com/" then
				set active tab index of w to i
				set index of w to 1
				tell application "Google Chrome" to activate
				return
			end if
			set i to i + 1
		end repeat
	end repeat
	open location "https://calendar.google.com/"
end tell

tell application "Google Chrome" to activate 
