# lua-match-all

# Example

```lua
local code = '<object x="32126" name="test"/> <object x="32621" name="next"/> <object x="3271" name="another"/> <object x="3231" name="dsadsa"/> <object x="321" name="eluwina"/> '

for k,v in pairs(findAll(code, '<object x="(%d+)" name="(%a+)"/> ', 2)) do
    print(v[1])
end
```
