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

project "OpenGLDemo"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}/")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}/")

	files
	{
		"OpenGLDemo/Core/**.h",
		"OpenGLDemo/Core/**.cpp"
	}

	defines
	{
		"GLFW_INCLUDE_NONE",
	}

	includedirs
	{
		"OpenGLDemo/External/Glad/include",
		"OpenGLDemo/External/GLFW/include"
	}

	links
	{
		"GLFW",
		"Glad",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on" -- 会默认生成/ZI

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
