//
//  Shader.fsh
//  test
//
//  Created by ヨウスケ on 2012/08/19.
//  Copyright (c) 2012年 Yosuke. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}