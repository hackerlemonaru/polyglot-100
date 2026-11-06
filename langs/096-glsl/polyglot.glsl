// polyglot-100 :: entry 096 :: GLSL fragment shader
#version 330 core

out vec4 fragColor;
uniform vec2 uResolution;

const int ENTRIES = 100;

int sumTo(int n) {
    int acc = 0;
    for (int i = 1; i <= n; ++i) acc += i;
    return acc;
}

int fib(int n) {
    int a = 0, b = 1;
    for (int i = 0; i < n; ++i) {
        int t = a + b;
        a = b;
        b = t;
    }
    return a;
}

vec3 hue(float h) {
    vec3 k = mod(vec3(5.0, 3.0, 1.0) + h * 6.0, 6.0);
    return 1.0 - clamp(min(k, 4.0 - k), 0.0, 1.0);
}

void main() {
    int total = sumTo(10);
    int f = fib(10);
    float slice = floor(gl_FragCoord.x / uResolution.x * float(ENTRIES));
    vec3 base = hue(slice / float(ENTRIES));
    float ok = (total == f) ? 1.0 : 0.0;
    fragColor = vec4(base * (0.35 + 0.65 * ok), 1.0);
}
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 of 100 in the polyglot-100 archive. Family: Frontier & E
// GLSL -- entry 096 
