#pragma once
#include "Core/Common/Camera.h"
#include "glm/vec3.hpp"

namespace Chapter2
{
	// settings
	const unsigned int SCR_WIDTH = 1600;
	const unsigned int SCR_HEIGHT = 900;

	// camera
	inline Camera camera(glm::vec3(-1.2f, 1.0f, 3.0f));
	inline float lastX = SCR_WIDTH / 2.0f;
	inline float lastY = SCR_HEIGHT / 2.0f;
	inline bool firstMouse = true;

	// timing
	inline float deltaTime = 0.0f;
	inline float lastFrame = 0.0f;

	// lighting
	inline glm::vec3 lightPos(1.2f, 1.0f, 2.0f);

	int Chapter2ColorsMain();
	int Chapter2BasicLightingMain();
	int Chapter2MaterialsMain();
	int Chapter2LightingMapsMain();
	int Chapter2DirectionalLightMain();
	int Chapter2PointLightMain();
	int Chapter2SpotLightMain();
	int Chapter2MultipleLightsMain();

}
