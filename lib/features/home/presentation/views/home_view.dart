import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(),
          SliverAppBar(),
          SliverToBoxAdapter(
            child: HomeViewBody(),
          )
        ],
      ),
    );
  }
}
