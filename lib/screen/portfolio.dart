import 'package:flutter/material.dart';
import 'package:portfolio/model/portfolio_repository.dart';

import '../model/portfolio_model.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  List<Widget> _buildCards(BuildContext context) {
    List<PortfolioModel> portfolios = PortfolioRepository.portfolio;
    if (portfolios.isEmpty) {
      return const <Card>[];
    }

    return portfolios.map((portfolio) {
      return SizedBox(
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18 / 11,
                child: Image.asset(
                  portfolio.photoURL,
                  fit: BoxFit.cover,
                  height: 50,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        portfolio.Title,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 8.0),
                      Text(portfolio.description)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        // childAspectRatio: 8.0 / 9.0,?
        children: _buildCards(context),
      ),
    );
  }
}

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double width = screenWidth - 20;

    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            // Image(image: image)
          ],
        ),
      ),
    );
  }
}
