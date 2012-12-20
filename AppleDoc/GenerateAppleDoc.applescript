#!/usr/bin/osascript

tell application "Xcode"
	tell first project
		
		-- variables to export
		set projectName to (get name)
		set projectDir to (get project directory)
		set company to (get organization name)
		
		-- invoke script passing extracted variables
		do shell script ("sh /Users/paynerc/projects/bullittsystems/xcode_automation/AppleDoc/GenerateAppleDoc.sh " & projectName & " " & projectDir & " " & company)
		
	end tell
end tell
