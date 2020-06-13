# =============================================================================# @file    Save PDFs of All Tabs# @brief   Convert open tabs to PDF and save them in a destination folder# @author  Michael Hucka <mhucka@caltech.edu># @license Please see the file LICENSE in the parent directory# @repo    https://github.com/mhucka/devonagent-hacks# =============================================================================use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additions# Utility functions.# .............................................................................on appMissing(theName, theId)	# Test if the given application exists on this computer & return true if not.	try		tell application "Finder"			get name of application file id theId		end tell	on error		return true	end try	return falseend appMissingon appNotRunning(theName, theId)	# Test if the given application is running & return true if not.	tell application "System Events"		set found to ((get name of every application process) contains theName)	end tell	return not foundend appNotRunningon sanitizedFileName(name)	# Return a name with most non-ASCII characters replaced with "-" and leading	# and trailing whitespace removed.  This is more strict than necessary; macOS	# allows many more characters in file names, but this function makes the 	# result more compatible with Linux/Unix file systems.	if length of name > 250 then		set name to text 1 thru 250 of name	end if	return do shell script "echo " & quoted form of name & " | sed 's|[^a-zA-Z0-9_ ]|-|g;s|^[ 	]*||;s|[ 	]*$||'"end sanitizedFileName# Main body.# .............................................................................# Sanity checks.if my appMissing("DEVONagent", "DNag") then	display dialog "This script only works in DEVONagent, which is not installed."	returnend ifif my appNotRunning("DEVONagent", "DNag") then	display dialog "DEVONagent does not appear to be running."	returnend if# Main loop.tell application id "DNag"	set destinationFolder to (choose folder with prompt "Choose destination folder for PDF files")	repeat with theTab in (tabs of browser 1)		set theTitle to name of theTab		set contentAsPDF to PDF of theTab		set fileName to my sanitizedFileName(theTitle) & ".pdf"		set filePath to (the POSIX path of destinationFolder) & "/" & fileName		set theFile to open for access filePath with write permission		write contentAsPDF to theFile		close access theFile	end repeatend tell