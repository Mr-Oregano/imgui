project "ImGui"
    kind "StaticLib"
    language "C++"
    
	targetdir "bin/%{cfg.buildcfg}_%{cfg.architecture}"
	objdir "bin-int/%{cfg.buildcfg}_%{cfg.architecture}"

	files {
        "./*.cpp",
        "./*.h"
    }
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        symbols "off"
