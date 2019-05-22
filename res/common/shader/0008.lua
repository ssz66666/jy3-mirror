#version 100
precision mediump float;
varying mediump vec4 colorVarying;
varying mediump vec2 texCoordv;
uniform sampler2D sampler;
uniform sampler2D _samplerAlpha;
uniform float _alphaFlag;
void main() {
	float a = texture2D(_samplerAlpha, texCoordv).r;
	vec4 c = texture2D(sampler, texCoordv);
	float finala =  c.a * smoothstep(0.0, 1.0, a/_alphaFlag);
	gl_FragColor = vec4(vec3(c * colorVarying), finala); 
}