#pragma once
#include "Core/Common/Shader.h"
#include "Core/Common/Camera.h"
#include "glm/vec3.hpp"

namespace Chapter5
{
	// settings
	const unsigned int SCR_WIDTH = 800;
	const unsigned int SCR_HEIGHT = 600;

	// camera
	inline Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));
	inline float lastX = (float)SCR_WIDTH / 2.0;
	inline float lastY = (float)SCR_HEIGHT / 2.0;
	inline bool firstMouse = true;

	// timing
	inline float deltaTime = 0.0f;
	inline float lastFrame = 0.0f;

	int Chapter5BulinnPhoneMain();
	int Chapter5ShadowMappingMain();
}
