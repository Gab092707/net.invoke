workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "bank deposit")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "bank withdraw")
local function Bank(id)
   local self = {}
   function self:withdraw(pets, gems)
local A_1 = 
{
    [1] = id, 
    [2] = 
{
}, 
    [3] = gems
}
        local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["bank withdraw"]
        Event:InvokeServer(A_1)
   end
   function self:deposit(pets, gems)
       local A_1 = 
{
    [1] = id, 
    [2] = 
{
}, 
    [3] = gems
}
        local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["bank deposit"]
        Event:InvokeServer(A_1)
   end
   return self
end
--//
local bankid = "479a44d3-b42a-4e82-84a8-e7ee5adbdb90"--bank--id 
for i=1, 1000 do
   Bank(bankid):withdraw({}, 1)
   print('withdrawed 1 gem')
   Bank(bankid):deposit({}, 1)
   print('deposited 1 gem')
   task.wait()
end
