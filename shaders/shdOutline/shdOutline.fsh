//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float outlineWidth;
uniform float outlineHeight;
uniform float outlineDepth;
const float MAX_DEPTH = 10.0;

void main()
{
	vec2 offsetX;
	offsetX.x = outlineWidth;

	vec2 offsetY;
	offsetY.y = outlineHeight;

	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
	alpha += ceil( texture2D( gm_BaseTexture, v_vTexcoord + offsetX ).a );
	alpha += ceil( texture2D( gm_BaseTexture, v_vTexcoord - offsetX ).a );
	alpha += ceil( texture2D( gm_BaseTexture, v_vTexcoord + offsetY ).a );

	for ( float i = 0.0; i < MAX_DEPTH; i += 1.0 ) {
		if ( i >= outlineDepth ) {
			break;
		}
		alpha += ceil( texture2D( gm_BaseTexture, v_vTexcoord - (offsetY * i) ).a );
	}

	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
}
