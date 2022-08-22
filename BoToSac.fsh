//
//  Shader.fsh
//  ShouMaoBiOpenGL
//
//  Created by 小小 on 15/7/2553.
//

uniform sampler2D hoaTietDeu;

varying lowp vec2 toaDoHoaTiet_khongDeu;
varying lowp vec4 mauSac_khongDeu;

void main() {

//   lowp float doDuc = texture2D( hoaTietDeu, toaDoHoaTiet_khongDeu ).a;
   // ---- tô màu điểm ảnh
   gl_FragColor = mauSac_khongDeu*texture2D( hoaTietDeu, toaDoHoaTiet_khongDeu );
}
