module Telescope

using Telescope_jll
export Telescope_jll

using CEnum

struct TS_PositionInfo
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct TS_CollisionInfo
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

function TS_BtAddTriggerBox(id, hx, hy, hz, px, py, pz)
    ccall((:TS_BtAddTriggerBox, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), id, hx, hy, hz, px, py, pz)
end

function TS_BtRemoveGameObject(id)
    ccall((:TS_BtRemoveGameObject, libtelescope), Cvoid, (Cint,), id)
end

function TS_BtSetLinearVelocity(id, vx, vy, vz)
    ccall((:TS_BtSetLinearVelocity, libtelescope), Cvoid, (Cint, Cfloat, Cfloat, Cfloat), id, vx, vy, vz)
end

# no prototype is found for this function at telescope.h:38:6, please use with caution
function TS_BtStepSimulation()
    ccall((:TS_BtStepSimulation, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:40:25, please use with caution
function TS_GetNextCollision()
    ccall((:TS_GetNextCollision, libtelescope), TS_CollisionInfo, ())
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
function TS_VkAcquireNextImage()
    ccall((:TS_VkAcquireNextImage, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:54:6, please use with caution
function TS_VkResetCommandBuffer()
    ccall((:TS_VkResetCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:56:6, please use with caution
function TS_VkBeginCommandBuffer()
    ccall((:TS_VkBeginCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:58:6, please use with caution
function TS_VkBeginDrawPass()
    ccall((:TS_VkBeginDrawPass, libtelescope), Cvoid, ())
end

function TS_VkEndDrawPass(r, g, b, a)
    ccall((:TS_VkEndDrawPass, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

# no prototype is found for this function at telescope.h:62:6, please use with caution
function TS_VkEndCommandBuffer()
    ccall((:TS_VkEndCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:64:6, please use with caution
function TS_VkQueueSubmit()
    ccall((:TS_VkQueueSubmit, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:66:6, please use with caution
function TS_VkQueuePresent()
    ccall((:TS_VkQueuePresent, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:68:6, please use with caution
function TS_VkCreateInstance()
    ccall((:TS_VkCreateInstance, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:70:6, please use with caution
function TS_VkCreateSurface()
    ccall((:TS_VkCreateSurface, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:72:6, please use with caution
function TS_VkSelectPhysicalDevice()
    ccall((:TS_VkSelectPhysicalDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:74:6, please use with caution
function TS_VkSelectQueueFamily()
    ccall((:TS_VkSelectQueueFamily, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:76:6, please use with caution
function TS_VkCreateDevice()
    ccall((:TS_VkCreateDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:79:6, please use with caution
function TS_VkCreateSwapchain()
    ccall((:TS_VkCreateSwapchain, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:81:6, please use with caution
function TS_VkCreateImageViews()
    ccall((:TS_VkCreateImageViews, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:83:6, please use with caution
function TS_VkSetupDepthStencil()
    ccall((:TS_VkSetupDepthStencil, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:85:6, please use with caution
function TS_VkCreateRenderPass()
    ccall((:TS_VkCreateRenderPass, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:87:6, please use with caution
function TS_VkCreateTrianglePipeline()
    ccall((:TS_VkCreateTrianglePipeline, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:89:6, please use with caution
function TS_VkCreateFramebuffers()
    ccall((:TS_VkCreateFramebuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:91:6, please use with caution
function TS_VkCreateCommandPool()
    ccall((:TS_VkCreateCommandPool, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:93:6, please use with caution
function TS_VkAllocateCommandBuffers()
    ccall((:TS_VkAllocateCommandBuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:95:6, please use with caution
function TS_VkCreateSemaphores()
    ccall((:TS_VkCreateSemaphores, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:97:6, please use with caution
function TS_VkCreateFences()
    ccall((:TS_VkCreateFences, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:99:6, please use with caution
function TS_VkInit()
    ccall((:TS_VkInit, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:101:6, please use with caution
function TS_VkDestroyFences()
    ccall((:TS_VkDestroyFences, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:103:6, please use with caution
function TS_VkDestroySemaphores()
    ccall((:TS_VkDestroySemaphores, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:105:6, please use with caution
function TS_VkFreeCommandBuffers()
    ccall((:TS_VkFreeCommandBuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:107:6, please use with caution
function TS_VkDestroyCommandPool()
    ccall((:TS_VkDestroyCommandPool, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:109:6, please use with caution
function TS_VkDestroyFramebuffers()
    ccall((:TS_VkDestroyFramebuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:111:6, please use with caution
function TS_VkDestroyTrianglePipeline()
    ccall((:TS_VkDestroyTrianglePipeline, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:113:6, please use with caution
function TS_VkDestroyRenderPass()
    ccall((:TS_VkDestroyRenderPass, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:115:6, please use with caution
function TS_VkTeardownDepthStencil()
    ccall((:TS_VkTeardownDepthStencil, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:117:6, please use with caution
function TS_VkDestroyImageViews()
    ccall((:TS_VkDestroyImageViews, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:119:6, please use with caution
function TS_VkDestroySwapchain()
    ccall((:TS_VkDestroySwapchain, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:121:6, please use with caution
function TS_VkDestroyDevice()
    ccall((:TS_VkDestroyDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:123:6, please use with caution
function TS_VkDestroySurface()
    ccall((:TS_VkDestroySurface, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:125:6, please use with caution
function TS_VkDestroyInstance()
    ccall((:TS_VkDestroyInstance, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:127:6, please use with caution
function TS_VkQuit()
    ccall((:TS_VkQuit, libtelescope), Cvoid, ())
end

function TS_Init(ttl, wdth, hght)
    ccall((:TS_Init, libtelescope), Cvoid, (Ptr{Cchar}, Cint, Cint), ttl, wdth, hght)
end

# no prototype is found for this function at telescope.h:131:6, please use with caution
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
