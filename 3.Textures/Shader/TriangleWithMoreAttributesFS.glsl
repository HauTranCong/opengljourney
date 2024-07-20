#version 330 core
out vec4 FragColor;
  
in vec3 ourColor;
in vec2 TexCoord;

uniform sampler2D ourTexture;
uniform sampler2D texture2;

void main()
{
//    FragColor = texture(ourTexture, TexCoord) * vec4(ourColor, 1.0); 
    FragColor = mix(texture(ourTexture, TexCoord), texture(texture2, TexCoord), 0.5);
}