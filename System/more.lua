-- Function to list files in the /programs folder
function list_files_in_programs()
    local folder = "/programs"
    local files = {}
    
    -- Check if the /programs directory exists
    if not fs.isDir(folder) then
        term.setTextColor(colors.red)
        print("ERROR: cannot find folder 'programs'")
        return files  -- Return an empty list if the folder doesn't exist
    end

    -- List the files in the /programs directory
    for _, file in pairs(fs.list(folder)) do
        if fs.isDir(fs.combine(folder, file)) == false then
            table.insert(files, file)
        end
    end

    return files
end

-- Function to display the file list and open the selected program
function choose_and_open_program()
    local files = list_files_in_programs()

    if #files == 0 then
        term.setTextColor(colors.red)
        print("ERROR: Cannot find programs")
        sleep(3)
        shell.run("System/OS.lua")
        return
    end
    
    term.clear()
    term.setCursorPos(1,1)
    print("Chose the Program")
    
    -- Display the files to the user
    for i, file in ipairs(files) do
        print(i .. ". " .. file)
    end

    -- Get the user's choice
    if term.isColor() then
      term.setTextColor(colors.yellow)
    end
    print("---------------------------------------------------")
    term.setTextColor(colors.white)
    local choice = tonumber(read())
    
    if choice and choice >= 1 and choice <= #files then
        local chosen_file = fs.combine("/programs", files[choice])
        print("Starting Program = " .. chosen_file)
        
        -- Run the program
        shell.run(chosen_file)
    else
        print("Unknown Program")
        sleep(3)
        shell.run("/system/more.lua")
        return
        
    end
end

-- Main execution
choose_and_open_program()

