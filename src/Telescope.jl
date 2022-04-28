module Telescope

using Telescope_jll
export Telescope_jll

using CEnum

struct TS_PositionInfo
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct TS_CollisionEvent
    id1::Cint
    id2::Cint
    colliding::Bool
end

function TS_BtAddRigidBox(id, hx, hy, hz, m, px, py, pz, isKinematic)
    ccall((:TS_BtAddRigidBox, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Bool), id, hx, hy, hz, m, px, py, pz, isKinematic)
end

function TS_BtAddStaticBox(id, hx, hy, hz, px, py, pz)
    ccall((:TS_BtAddStaticBox, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), id, hx, hy, hz, px, py, pz)
end

function TS_BtAddStaticTriggerBox(id, hx, hy, hz, px, py, pz)
    ccall((:TS_BtAddStaticTriggerBox, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), id, hx, hy, hz, px, py, pz)
end

function TS_BtRemovePhysicsObject(id)
    ccall((:TS_BtRemovePhysicsObject, libtelescope), Cvoid, (Cint,), id)
end

function TS_BtSetLinearVelocity(id, vx, vy, vz)
    ccall((:TS_BtSetLinearVelocity, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat), id, vx, vy, vz)
end

# no prototype is found for this function at telescope.h:38:6, please use with caution
function TS_BtStepSimulation()
    ccall((:TS_BtStepSimulation, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:40:26, please use with caution
function TS_BtGetNextCollision()
    ccall((:TS_BtGetNextCollision, libtelescope), TS_CollisionEvent, ())
end

function TS_BtGetPositionById(id)
    ccall((:TS_BtGetPositionById, libtelescope), TS_PositionInfo, (Cint,), id)
end

# no prototype is found for this function at telescope.h:44:14, please use with caution
function TS_SDLGetError()
    ccall((:TS_SDLGetError, libtelescope), Ptr{Cchar}, ())
end

function TS_VkCmdDrawRect(r, g, b, a, x, y, w, h)
    ccall((:TS_VkCmdDrawRect, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat, Cint, Cint, Cint, Cint), r, g, b, a, x, y, w, h)
end

function TS_VkCmdDrawSprite(img, r, g, b, a, rx, ry, rw, rh, cw, ch, ci, cj, px, py, sx, sy)
    ccall((:TS_VkCmdDrawSprite, libtelescope), Cvoid, (Ptr{Cchar}, Cfloat, Cfloat, Cfloat, Cfloat, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cfloat, Cfloat), img, r, g, b, a, rx, ry, rw, rh, cw, ch, ci, cj, px, py, sx, sy)
end

function TS_VkCmdClearColorImage(r, g, b, a)
    ccall((:TS_VkCmdClearColorImage, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

# no prototype is found for this function at telescope.h:52:6, please use with caution
function TS_VkBeginDrawPass()
    ccall((:TS_VkBeginDrawPass, libtelescope), Cvoid, ())
end

function TS_VkEndDrawPass(r, g, b, a)
    ccall((:TS_VkEndDrawPass, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

function TS_Init(ttl, wdth, hght)
    ccall((:TS_Init, libtelescope), Cvoid, (Ptr{Cchar}, Cint, Cint), ttl, wdth, hght)
end

# no prototype is found for this function at telescope.h:58:6, please use with caution
function TS_Quit()
    ccall((:TS_Quit, libtelescope), Cvoid, ())
end

function TS_PlaySound(sound_file, loops, ticks)
    ccall((:TS_PlaySound, libtelescope), Cvoid, (Ptr{Cchar}, Cint, Cint), sound_file, loops, ticks)
end

# exports
const PREFIXES = ["TS_"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
