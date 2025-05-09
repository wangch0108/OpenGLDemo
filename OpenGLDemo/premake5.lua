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
ASSIMP_BIN = "%{wks.location}/OpenGLDemo/External/Assimp/bin/x64/"

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
		"External/stb_image/**.h",
		"External/stb_image/**.cpp",
		"External/glm/glm/**.hpp",

		-- view shader source code in vs ide
		"Shaders/**.vs",
		"Shaders/**.fs",
		"Shaders/**.gs",
		"Textures/*.jpg",
		"Textures/*.png",
	}

	defines
	{
		"GLFW_INCLUDE_NONE",
	}

	includedirs
	{
		"External/Glad/include",
		"External/GLFW/include",
		"External/stb_image",
		"External/glm",
		"External/Assimp/include",
		"",
	}

	libdirs 
	{ 
		"External/Assimp/lib/x64"
	}

	links
	{
		"GLFW",
		"Glad",
		"assimp-vc143-mt"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		postbuildcommands
		{
			"{COPYDIR} \"%{ASSIMP_BIN}\" \"%{cfg.targetdir}\""
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
