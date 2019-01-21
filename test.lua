require 'Component'

local compA = Component:create(0, 0, 20 ,20)
compA:print()
-- print("test:", dump(compA))
print("comps:", dump(Component.components))
compA:delete()
print("comps:", dump(Component.components))