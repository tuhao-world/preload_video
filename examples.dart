class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeModel = HomeModel();

  @override
  Widget build(BuildContext context) {
    return PreloadVideo<HomeVo, HomeModel>(
      model: homeModel,
    );
  }
}
