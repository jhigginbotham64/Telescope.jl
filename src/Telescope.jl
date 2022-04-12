module Telescope

using Telescope_jll
export Telescope_jll

using CEnum

# no prototype is found for this function at telescope.h:12:14, please use with caution
function TS_GetSDLError()
    ccall((:TS_GetSDLError, libtelescope), Ptr{Cchar}, ())
end

function TS_VkCmdDrawRect(r, g, b, a, x, y, w, h)
    ccall((:TS_VkCmdDrawRect, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat, Cint, Cint, Cint, Cint), r, g, b, a, x, y, w, h)
end

function TS_VkCmdDrawSprite(img, a, rx, ry, rw, rh, cw, ch, ci, cj, px, py, sx, sy)
    ccall((:TS_VkCmdDrawSprite, libtelescope), Cvoid, (Ptr{Cchar}, Cfloat, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), img, a, rx, ry, rw, rh, cw, ch, ci, cj, px, py, sx, sy)
end

function TS_VkCmdClearColorImage(r, g, b, a)
    ccall((:TS_VkCmdClearColorImage, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

# no prototype is found for this function at telescope.h:20:6, please use with caution
function TS_VkAcquireNextImage()
    ccall((:TS_VkAcquireNextImage, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:22:6, please use with caution
function TS_VkResetCommandBuffer()
    ccall((:TS_VkResetCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:24:6, please use with caution
function TS_VkBeginCommandBuffer()
    ccall((:TS_VkBeginCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:26:6, please use with caution
function TS_VkBeginDrawPass()
    ccall((:TS_VkBeginDrawPass, libtelescope), Cvoid, ())
end

function TS_VkEndDrawPass(r, g, b, a)
    ccall((:TS_VkEndDrawPass, libtelescope), Cvoid, (Cfloat, Cfloat, Cfloat, Cfloat), r, g, b, a)
end

# no prototype is found for this function at telescope.h:30:6, please use with caution
function TS_VkEndCommandBuffer()
    ccall((:TS_VkEndCommandBuffer, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:32:6, please use with caution
function TS_VkQueueSubmit()
    ccall((:TS_VkQueueSubmit, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:34:6, please use with caution
function TS_VkQueuePresent()
    ccall((:TS_VkQueuePresent, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:36:6, please use with caution
function TS_VkCreateInstance()
    ccall((:TS_VkCreateInstance, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:38:6, please use with caution
function TS_VkCreateSurface()
    ccall((:TS_VkCreateSurface, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:40:6, please use with caution
function TS_VkSelectPhysicalDevice()
    ccall((:TS_VkSelectPhysicalDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:42:6, please use with caution
function TS_VkSelectQueueFamily()
    ccall((:TS_VkSelectQueueFamily, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:44:6, please use with caution
function TS_VkCreateDevice()
    ccall((:TS_VkCreateDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:47:6, please use with caution
function TS_VkCreateSwapchain()
    ccall((:TS_VkCreateSwapchain, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:49:6, please use with caution
function TS_VkCreateImageViews()
    ccall((:TS_VkCreateImageViews, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:51:6, please use with caution
function TS_VkSetupDepthStencil()
    ccall((:TS_VkSetupDepthStencil, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:53:6, please use with caution
function TS_VkCreateRenderPass()
    ccall((:TS_VkCreateRenderPass, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:55:6, please use with caution
function TS_VkCreateTrianglePipeline()
    ccall((:TS_VkCreateTrianglePipeline, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:57:6, please use with caution
function TS_VkCreateFramebuffers()
    ccall((:TS_VkCreateFramebuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:59:6, please use with caution
function TS_VkCreateCommandPool()
    ccall((:TS_VkCreateCommandPool, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:61:6, please use with caution
function TS_VkAllocateCommandBuffers()
    ccall((:TS_VkAllocateCommandBuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:63:6, please use with caution
function TS_VkCreateSemaphores()
    ccall((:TS_VkCreateSemaphores, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:65:6, please use with caution
function TS_VkCreateFences()
    ccall((:TS_VkCreateFences, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:67:6, please use with caution
function TS_VkInit()
    ccall((:TS_VkInit, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:69:6, please use with caution
function TS_VkDestroyFences()
    ccall((:TS_VkDestroyFences, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:71:6, please use with caution
function TS_VkDestroySemaphores()
    ccall((:TS_VkDestroySemaphores, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:73:6, please use with caution
function TS_VkFreeCommandBuffers()
    ccall((:TS_VkFreeCommandBuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:75:6, please use with caution
function TS_VkDestroyCommandPool()
    ccall((:TS_VkDestroyCommandPool, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:77:6, please use with caution
function TS_VkDestroyFramebuffers()
    ccall((:TS_VkDestroyFramebuffers, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:79:6, please use with caution
function TS_VkDestroyTrianglePipeline()
    ccall((:TS_VkDestroyTrianglePipeline, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:81:6, please use with caution
function TS_VkDestroyRenderPass()
    ccall((:TS_VkDestroyRenderPass, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:83:6, please use with caution
function TS_VkTeardownDepthStencil()
    ccall((:TS_VkTeardownDepthStencil, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:85:6, please use with caution
function TS_VkDestroyImageViews()
    ccall((:TS_VkDestroyImageViews, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:87:6, please use with caution
function TS_VkDestroySwapchain()
    ccall((:TS_VkDestroySwapchain, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:89:6, please use with caution
function TS_VkDestroyDevice()
    ccall((:TS_VkDestroyDevice, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:91:6, please use with caution
function TS_VkDestroySurface()
    ccall((:TS_VkDestroySurface, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:93:6, please use with caution
function TS_VkDestroyInstance()
    ccall((:TS_VkDestroyInstance, libtelescope), Cvoid, ())
end

# no prototype is found for this function at telescope.h:95:6, please use with caution
function TS_VkQuit()
    ccall((:TS_VkQuit, libtelescope), Cvoid, ())
end

function TS_Init(ttl, wdth, hght)
    ccall((:TS_Init, libtelescope), Cvoid, (Ptr{Cchar}, Cint, Cint), ttl, wdth, hght)
end

# no prototype is found for this function at telescope.h:99:6, please use with caution
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
