//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float curve_amt = 1.6;

void main() 
{
	
	float offsetY = v_vTexcoord.x - 0.5;
	offsetY *= offsetY;
	float offsetX = v_vTexcoord.y - 0.5;
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord - vec2(0.0, abs(offsetY) * offsetX * curve_amt) );
}