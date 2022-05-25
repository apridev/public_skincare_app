class OnBoarding{
  final String title;
  final String image;
  final String subtitle;

  OnBoarding({
    required this.title,
    required this. image,
    required this.subtitle
  });
}
List<OnBoarding> onBoardingList = [

    OnBoarding(
      title: 'Selamat datang di Public Skincare',
      image: 'assets/img/pict1.png',
      subtitle: 'Asli kurang lengkap banget kalau jalan-jalan cuma bawa dompet, tas sama hp. Biasanya sih aku sama temen bawa kosmetik, apalagi dari Public Skincare Jadi makin lengkap jalan-jalannya.',
    ),
    OnBoarding(
      title: 'Hanya menyediakan Skincare terbaik',
      image: 'assets/img/pict2.png',
      subtitle: 'Sekarang kamu ga perlu khawatir karena produk kami 100% original dari pabrik. produk ini sudah terjual ratusan pcs dan dilengkapi dengan ekstrak bengkoang yang akan membuat kulit kamu lebih cerah dan halus.',
    ),
    OnBoarding(
      title: 'Tunggu apa lagi ayo rawat dirimu bersama Public Skincare',
      image: 'assets/img/pict3.png',
      subtitle: 'Public skincare hanya menjual kosmetik yang bersertifikat HALAL. Kami tidak menjual skincare yang non halal dan Skincare tidak berkualitas. Semua Skincare disini sudah teruji BPOM jadi kamu bisa menggunakannya dengan aman.',
    ),

  ];