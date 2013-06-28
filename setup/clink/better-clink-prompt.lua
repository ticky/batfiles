function pwd_filter()
    clink.prompt.value = string.gsub(clink.prompt.value, '>', '', 1)

    return false
end

function git_prompt_filter()
    for line in io.popen("git branch --no-color 2>nul"):lines() do
        local m = line:match("%* (.+)$")
        if m then
            clink.prompt.value = clink.prompt.value.." ⌥ "..m
            break
        end
    end

    return false
end

function git_dirty_filter()
    local dirty = false
    for line in io.popen("git status -s --porcelain 2>nul"):lines() do
        dirty = true
        break
    end

    if dirty == true then
        clink.prompt.value = clink.prompt.value.." ●"
    end

    return false
end

function multi_line_prompt_filter()
    clink.prompt.value = clink.prompt.value .. "\n> "

    return false
end

clink.prompt.register_filter(pwd_filter, 1)
clink.prompt.register_filter(git_prompt_filter, 50)
clink.prompt.register_filter(git_dirty_filter, 55)
clink.prompt.register_filter(multi_line_prompt_filter, 999)