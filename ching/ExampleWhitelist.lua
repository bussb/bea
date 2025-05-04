local h = game:GetService("HttpService")
local j = game:HttpGet("https://yourusername.github.io/yourrepo/whitelist.json")
local t = h:JSONDecode(j)
local w = game:GetService("RbxAnalyticsService"):GetClientId()
local k = getgenv().key

if t[k] == w then
    print("✅ Whitelisted: Key and HWID matched")
else
    print("❌ Invalid Key or HWID")
end
getgenv().key = "ABC123"