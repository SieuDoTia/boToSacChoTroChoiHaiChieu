//
//  Shader.vsh
//  ShouMaoBiOpenGL
//
//  Created by 小小 on 15/7/2553.
//

// ---- đặc trưng cho đỉnh
attribute vec3 viTri;
attribute vec4 mauSac;
attribute vec2 toaDoHoaTiet;

// ---- ma trận 
uniform mat4 maTran__phepChieu_gocNhin_moHinh;


// ---- biến không đều
varying lowp vec4 mauSac_khongDeu;
varying lowp vec2 toaDoHoaTiet_khongDeu;

void main() {
   // ---- biến hóa vị trí của đỉnh cho máy quay phim
   gl_Position = maTran__phepChieu_gocNhin_moHinh * vec4(viTri, 1.0);
   
   // ---- tính tọa độ họa tiết của đỉnh 
   toaDoHoaTiet_khongDeu = toaDoHoaTiet;
   
   // ---- màu sắc của đỉnh
   mauSac_khongDeu = mauSac;
}
