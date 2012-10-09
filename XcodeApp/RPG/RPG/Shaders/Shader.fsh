//
//  Shader.fsh
//  RPG
//
//  Created by ヨウスケ on 2012/10/03.
//  Copyright (c) 2012年 Yosuke. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
