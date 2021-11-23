import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      // これが、あなたのアプリケーションのテーマとなります。
      //
      // あなたのアプリケーションを「flutter run」で実行してみてください。そうすると、アプリケーションの
      // アプリケーションのツールバーが青くなります。次に、アプリケーションを終了せずに、以下を試してください。
      // 下のprimarySwatchをColors.greenに変更してから、"hot reload "を実行してください。
      // "hot reload"（"flutter run "を実行したコンソールで "r "を押してください。
      // または、Flutter IDEで変更を保存して "hot reload "を実行します）。
      // カウンターがゼロに戻っていないことに注意してください。
      // は再起動されていません。
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // このウィジェットは、あなたのアプリケーションのホーム・ページです。これはステートフルです。
  // どのように見えるかに影響するフィールドを含む State オブジェクト (以下に定義) を持っています。
  // どのように見えるかに影響するフィールドを含むステートオブジェクト（以下に定義）を持っていることを意味します。

  // このクラスは、ステートの設定です。このクラスは、ステートの構成要素であり、 ステートオブジェクトから提供された値（ここではタイトル）を保持します。
  // このクラスは、親(ここでは App widget)から提供された値(ここでは title)を保持し、
  // App widget のビルドメソッドで使用されます。
  // Stateのbuildメソッドで使用されます。Widgetサブクラスのフィールドは
  // 常に「final」と表示されます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // このsetStateの呼び出しは、Flutterフレームワークに何かが変わったことを伝えます。
      // この状態で何かが変更されたことを伝え、以下のビルドメソッドを再実行させます。
      // 更新された値を表示に反映させるためです。もし、setStateを呼び出さずに
      // setState()を呼び出さずに _counter を変更した場合、ビルドメソッドは再び呼び出されません。
      // 再度呼び出されることはないので、何も起こらないように見えます。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // このメソッドは、例えば上記の_incrementCounterメソッドで行われたように、setStateが呼ばれるたびに再実行されます。
    // 上記の _incrementCounter メソッドによって行われます。
    //
    // Flutterのフレームワークは、ビルドメソッドの再実行が速くなるように最適化されています。
    // ビルドメソッドの再実行が高速になるように最適化されているので、更新が必要なものは
    // 更新が必要なものを再構築することができます。
    return Scaffold(
      appBar: AppBar(
        // ここでは、App.buildメソッドで作成したMyHomePageオブジェクトから値を取得し、それを使ってappbarのタイトルを設定します。
        // App.buildメソッドで作成したMyHomePageオブジェクトの値を取得し、それを使ってappbarのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        // Centerは、レイアウトウィジェットです。1つの子を受け取り、それを親の中央に
        // 親の中央に配置します。
        child: Column(
        // Columnは、レイアウトウィジェットでもあります。子のリストを受け取って
        // 子のリストを受け取り、それらを垂直に配置します。デフォルトでは、子の水平方向のサイズに合わせて
        // また、親と同じ高さになるようにします。
        //
        // デバッグペインティング」を起動します（コンソールで「p」を押し、「デバッグペインティング」アクションを選択します）。
        // デバッグペインティング」を起動します（コンソールで「p」を押すか、Android Studio の Flutter インスペクタで「デバッグペインティングを切り替える」アクションを選択するか、または
        // StudioのFlutter Inspectorで "Toggle Debug Paint "アクションを選択するか、Visual Studio Codeで "Toggle Debug Paint "コマンドを選択します）。
        // をクリックすると、各ウィジェットのワイヤーフレームが表示されます。
        //
        // カラムには、自身のサイズや子の配置を制御するさまざまなプロパティがあります。
        // 子をどのように配置するかを制御するさまざまなプロパティがあります。ここでは mainAxisAlignment を使用して
        // ここでは、mainAxisAlignmentを使用して、子を垂直方向にセンタリングしています。
        // ここでの主軸は、Columnが垂直であるため、垂直軸です。
        // 水平軸）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // この末尾のコンマは、ビルドメソッドの自動フォーマットをより良いものにします。
    );
  }
}
