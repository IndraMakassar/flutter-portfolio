import 'package:portfolio/model/portfolio_model.dart';

class PortfolioRepository {
  static List<PortfolioModel> portfolio = [
    PortfolioModel(
      'Aplikasi Oweek',
      'Membantu panitia dalam ospek mahasiswa baru UC Makassar',
      'aplikasi_oweek.jpg',
    ),
    PortfolioModel(
        'Ketua UKM Budaya Jepang',
        'menjabat sebagai ketua UKM di UC Makassar',
        'UKM.jpg'
    )
  ];
}
