//
//  BoToSacMa.fsh
//  ShouMaoBiOpenGL
//
//  Created by 小小 on 24/6/2564.
//
// Cho đổi ảnh nét đen và nền trắng thành nét trắng và nền trống suất  

uniform sampler2D hoaTietDeu;

varying vec2 toaDoHoaTiet_khongDeu;
varying vec4 mauSac_khongDeu;

void main() {

//    float doDuc = texture2D( hoaTietDeu, toaDoHoaTiet_khongDeu ).a;
   // ---- tô màu điểm ảnh
   vec4 mauSac = mauSac_khongDeu*texture2D( hoaTietDeu, toaDoHoaTiet_khongDeu );
   float doXam = 0.212639*mauSac.r + 0.715169*mauSac.g + 0.072192*mauSac.b;
   float latDoXam = 1.0 - doXam;
   
   float doDuc = latDoXam*mauSac.a;
   
   gl_FragColor = vec4( latDoXam*doDuc, latDoXam*doDuc, latDoXam*doDuc, doDuc );
}
