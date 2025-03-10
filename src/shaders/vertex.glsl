uniform float uTime;
uniform float uFrequency;
varying float vElevation;
varying vec2 vUv;


void main() {

  vec3 newPosition = position;
  newPosition.y += sin(position.x * uFrequency + uTime * 1.5) * 0.4;

  gl_Position = projectionMatrix * modelViewMatrix * vec4(newPosition, 1.0);
  vUv = uv;
  vElevation = newPosition.y;
}