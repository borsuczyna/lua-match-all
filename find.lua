function findAll(str, pattern, values)
    local temp = tostring(pattern)
    local last = {}

    for i = 1, 9999 do
        if not str:match(temp) then
            local tmp1 = {}
            local tmp2 = {}
            local c = 0
            for k,v in pairs(last) do
                table.insert(tmp2, v)

                c = c + 1
                if c >= values then
                    table.insert(tmp1, tmp2)
                    tmp2 = {}
                    c = 0
                end
            end
            return tmp1
        else
            last = {str:match(temp)}
        end
        temp = temp .. pattern
    end

    return last
end
