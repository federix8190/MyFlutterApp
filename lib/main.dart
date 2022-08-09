import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  final ScrollController scrollController = new ScrollController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    scrollController.addListener(() {
      print('Fede estamos scroleando...');
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => _onRefresh(context),
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverAppBar(
                          expandedHeight: 300,
                          flexibleSpace: FlexibleSpaceBar(
                              background: Container(color: Colors.red,)
                          )
                      ),
                      SliverToBoxAdapter(
                        child: Text(
                            'The Who are an English rock band formed in London in 1964. Their classic lineup consisted of lead singer Roger Daltrey, guitarist and singer Pete Townshend, bass guitarist and singer John Entwistle, and drummer Keith Moon. They are considered one of the most influential rock bands of the 20th century, and have sold over 100 million records worldwide. Their contributions to rock music include the development of the Marshall Stack, large PA systems, the use of the synthesizer, Entwistle and Moons influential playing styles, Townshend s feedback and power chord guitar technique, and the development of the rock opera. They are cited as an influence by many hard rock, punk rock, power pop and mod bands, and their songs are still regularly played. Further festival appearances at Woodstock and the Isle of Wight, along with the concert album Live at Leeds (1970), established their reputation as a respected rock act. The success put pressure on lead songwriter Townshend, and the follow-up to Tommy, Lifehouse, was abandoned. Songs from the project made up Whos Next (1971), including the hits "Wont Get Fooled Again", "Baba ORiley", and "Behind Blue Eyes". The group released another concept album, Quadrophenia (1973), as a celebration of their mod roots, and oversaw the film adaptation of Tommy (1975). They continued to tour to large audiences before semi-retiring from live performances at the end of 1976. The release of Who Are You (1978) was overshadowed by Moons death shortly after. Dawson left after frequently arguing with Daltrey[7] and after being briefly replaced by Gabby Connolly, Daltrey moved to lead vocals. Townshend, with Entwistles encouragement, became the sole guitarist. Through Townshends mother, the group obtained a management contract with local promoter Robert Druce,[14] who started booking the band as a support act. The Detours were influenced by the bands they supported, including Screaming Lord Sutch, Cliff Bennett and the Rebel Rousers, Shane Fenton and the Fentones, and Johnny Kidd and the Pirates. The Detours were particularly interested in the Pirates as they also only had one guitarist, Mick Green, who inspired Townshend to combine rhythm and lead guitar in his style. Entwistles bass became more of a lead instrument,[15] playing melodies.[16] In February 1964, the Detours became aware of the group Johnny Devlin and the Detours and changed their name.[17] Townshend and his house-mate Richard Barnes spent a night considering names, focusing on a theme of joke announcements, including "No One" and "the Group". Townshend preferred "the Hair", and Barnes liked "the Who" because it "had a pop punch".[18] Daltrey chose "the Who" the next morning'
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ]
        ),
      );
  }

  Future<void> _onRefresh(BuildContext context) async {
    //await context.read<RestaurantDetailCubit>().loadData(refresh: true);
  }
}
