varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float fPixelWidth = 0.001;
float fPixelHeight = 0.001;
float pDir = 0.0;
float zoom = 400.0;
float noWrap = 1.0;

void main()
{
    float fB;
    float fC;
    vec2 posTex;
    
    if(pDir == 0.0)
    {
        fB = 1.0 - (zoom * fPixelHeight);
        fC = max(0.02, 1.0 + (fB - 1.0) * 4.0 * pow((v_vTexcoord.x - 0.5), 2.0));
        
        posTex = v_vTexcoord * vec2(1.0, fC) + vec2(0.0, (1.0 - fC) / 2.0);
        
        if(noWrap == 0.0 || (posTex.y >= 0.0 && posTex.y <= 1.0))
        {
            gl_FragColor = v_vColour * texture2D(gm_BaseTexture, posTex);
        }
    }
    else
    {
        fB = 1.0 - (zoom * fPixelWidth);
        fC = max(0.05, 1.0 + (fB - 1.0) * 4.0 * pow((v_vTexcoord.y - 0.5), 2.0));
        
        posTex = v_vTexcoord * vec2(fC, 1.0) + vec2((1.0 - fC) / 2.0, 0.0);
        
        if(noWrap == 0.0 || (posTex.x >= 0.0 && posTex.x <= 1.0))
        {
            gl_FragColor = v_vColour * texture2D(gm_BaseTexture, posTex);
        }
    }
}