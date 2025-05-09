#include "Chapter1/Chapter1.h"
#include "Chapter2/Chapter2.h"
#include "Chapter3/Chapter3.h"
#include "Chapter4/Chapter4.h"
#include "Chapter5/Chapter5.h"

int main()
{
	// return Chapter1Main();
	// return Chapter1TextureMain();
	// return Chapter1TransformationsMain();
	// return Chapter1CoordinateSystemsMain();
	// return Chapter1CameraMain();

	// return Chapter2::Chapter2ColorsMain();
	// return Chapter2::Chapter2BasicLightingMain();
	// return Chapter2::Chapter2MaterialsMain();
	// return Chapter2::Chapter2LightingMapsMain();
	// return Chapter2::Chapter2DirectionalLightMain();
	// return Chapter2::Chapter2PointLightMain();
	// return Chapter2::Chapter2SpotLightMain();
	// return Chapter2::Chapter2MultipleLightsMain();

	// return Chapter3::Chapter3ModelMain();

	// return Chapter4::Chapter4DepthTestingMain();
	// return Chapter4::Chapter4StencilTestingMain();
	// return Chapter4::Chapter4BlendingMain();
	// return Chapter4::Chapter4FrameBuffersMain();
	// return Chapter4::Chapter4CubemapsMain();
	// return Chapter4::Chapter4UBOMain();
	// return Chapter4::Chapter4GeometryShaderMain();
	// return Chapter4::Chapter4GeometryShader2Main();
	// return Chapter4::Chapter4GeometryShader3Main();
	// return Chapter4::Chapter4InstancingMain();
	// return Chapter4::Chapter4Instancing2Main();
	// return Chapter4::Chapter4MSAAMain();

	Shader::pathPrefix = "Shaders/Chapter5/";
	// return Chapter5::Chapter5BulinnPhongMain();
	// return Chapter5::Chapter5ShadowMappingMain();
	return Chapter5::Chapter5NormalMappingMain(); // TODO 这个目前还有问题
}