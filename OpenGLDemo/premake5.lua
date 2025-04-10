local function set_work_directory (dir)
    local work_dir = path.getabsolute(dir)
    os.chdir(work_dir)
    print("Work directory: " .. work_dir)
end
set_work_directory("../")

workspace "OpenGLDemo"
	architecture "x86_64"
	startproject "OpenGLDemo"

	configurations
	{
		"Debug",
	 	"Release",
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "OpenGLDemo/External/Glad"
	include "OpenGLDemo/External/GLFW"
group ""

set_work_directory("OpenGLDemo")
project "OpenGLDemo"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}/")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}/")

	files
	{
		"Core/**.h",
		"Core/**.cpp",

		-- view shader source code in vs ide
		"Shaders/*.shader.vs",
		"Shaders/*.shader.fs",
	}

	defines
	{
		"GLFW_INCLUDE_NONE",
	}

	includedirs
	{
		"External/Glad/include",
		"External/GLFW/include",
		"",
	}

	links
	{
		"GLFW",
		"Glad",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
