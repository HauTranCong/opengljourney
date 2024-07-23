#version 330 core
out vec4 FragColor;
  
in vec3 ourColor;
in vec2 TexCoord;

uniform sampler2D ourTexture;
uniform sampler2D texture2;
uniform float mixValue;

void main()
{
//  FragColor = texture(ourTexture, TexCoord) * vec4(ourColor, 1.0); 
    vec2 flippedTexCoord = vec2(1.0 - TexCoord.x, TexCoord.y);
    FragColor = mix(texture(ourTexture, TexCoord), texture(texture2, flippedTexCoord), 1.0 - mixValue) * vec4(ourColor, 1.0);
}