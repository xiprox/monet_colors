import 'package:flutter/material.dart';
import 'package:monet_colors/monet_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MonetColors? colors;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    colors = await Monet.get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Monet Colors'),
        ),
        body: colors == null
            ? const Center(child: CircularProgressIndicator())
            : ColorsList(colors: colors!),
      ),
    );
  }
}

class ColorsList extends StatelessWidget {
  final MonetColors colors;

  const ColorsList({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 24),
        ColorItem(color: colors.primary[0]!, label: 'Primary [0]'),
        ColorItem(color: colors.primary[10]!, label: 'Primary [10]'),
        ColorItem(color: colors.primary[50]!, label: 'Primary [50]'),
        ColorItem(color: colors.primary[100]!, label: 'Primary [100]'),
        ColorItem(color: colors.primary[200]!, label: 'Primary [200]'),
        ColorItem(color: colors.primary[300]!, label: 'Primary [300]'),
        ColorItem(color: colors.primary[400]!, label: 'Primary [400]'),
        ColorItem(color: colors.primary[500]!, label: 'Primary [500]'),
        ColorItem(color: colors.primary[600]!, label: 'Primary [600]'),
        ColorItem(color: colors.primary[700]!, label: 'Primary [700]'),
        ColorItem(color: colors.primary[800]!, label: 'Primary [800]'),
        ColorItem(color: colors.primary[900]!, label: 'Primary [900]'),
        ColorItem(color: colors.primary[1000]!, label: 'Primary [1000]'),
        const SizedBox(height: 24),
        ColorItem(color: colors.secondary[0]!, label: 'Secondary [0]'),
        ColorItem(color: colors.secondary[10]!, label: 'Secondary [10]'),
        ColorItem(color: colors.secondary[50]!, label: 'Secondary [50]'),
        ColorItem(color: colors.secondary[100]!, label: 'Secondary [100]'),
        ColorItem(color: colors.secondary[200]!, label: 'Secondary [200]'),
        ColorItem(color: colors.secondary[300]!, label: 'Secondary [300]'),
        ColorItem(color: colors.secondary[400]!, label: 'Secondary [400]'),
        ColorItem(color: colors.secondary[500]!, label: 'Secondary [500]'),
        ColorItem(color: colors.secondary[600]!, label: 'Secondary [600]'),
        ColorItem(color: colors.secondary[700]!, label: 'Secondary [700]'),
        ColorItem(color: colors.secondary[800]!, label: 'Secondary [800]'),
        ColorItem(color: colors.secondary[900]!, label: 'Secondary [900]'),
        ColorItem(color: colors.secondary[1000]!, label: 'Secondary [1000]'),
        const SizedBox(height: 24),
        ColorItem(color: colors.tertiary[0]!, label: 'Tertiary [0]'),
        ColorItem(color: colors.tertiary[10]!, label: 'Tertiary [10]'),
        ColorItem(color: colors.tertiary[50]!, label: 'Tertiary [50]'),
        ColorItem(color: colors.tertiary[100]!, label: 'Tertiary [100]'),
        ColorItem(color: colors.tertiary[200]!, label: 'Tertiary [200]'),
        ColorItem(color: colors.tertiary[300]!, label: 'Tertiary [300]'),
        ColorItem(color: colors.tertiary[400]!, label: 'Tertiary [400]'),
        ColorItem(color: colors.tertiary[500]!, label: 'Tertiary [500]'),
        ColorItem(color: colors.tertiary[600]!, label: 'Tertiary [600]'),
        ColorItem(color: colors.tertiary[700]!, label: 'Tertiary [700]'),
        ColorItem(color: colors.tertiary[800]!, label: 'Tertiary [800]'),
        ColorItem(color: colors.tertiary[900]!, label: 'Tertiary [900]'),
        ColorItem(color: colors.tertiary[1000]!, label: 'Tertiary [1000]'),
        const SizedBox(height: 24),
        ColorItem(color: colors.neutral[0]!, label: 'Neutral [0]'),
        ColorItem(color: colors.neutral[10]!, label: 'Neutral [10]'),
        ColorItem(color: colors.neutral[50]!, label: 'Neutral [50]'),
        ColorItem(color: colors.neutral[100]!, label: 'Neutral [100]'),
        ColorItem(color: colors.neutral[200]!, label: 'Neutral [200]'),
        ColorItem(color: colors.neutral[300]!, label: 'Neutral [300]'),
        ColorItem(color: colors.neutral[400]!, label: 'Neutral [400]'),
        ColorItem(color: colors.neutral[500]!, label: 'Neutral [500]'),
        ColorItem(color: colors.neutral[600]!, label: 'Neutral [600]'),
        ColorItem(color: colors.neutral[700]!, label: 'Neutral [700]'),
        ColorItem(color: colors.neutral[800]!, label: 'Neutral [800]'),
        ColorItem(color: colors.neutral[900]!, label: 'Neutral [900]'),
        ColorItem(color: colors.neutral[1000]!, label: 'Neutral[1000]'),
        const SizedBox(height: 24),
        ColorItem(
          color: colors.neutralVariant[0]!,
          label: 'Neutral Variant [0]',
        ),
        ColorItem(
          color: colors.neutralVariant[10]!,
          label: 'Neutral Variant [10]',
        ),
        ColorItem(
          color: colors.neutralVariant[50]!,
          label: 'Neutral Variant [50]',
        ),
        ColorItem(
          color: colors.neutralVariant[100]!,
          label: 'Neutral Variant [100]',
        ),
        ColorItem(
          color: colors.neutralVariant[200]!,
          label: 'Neutral Variant [200]',
        ),
        ColorItem(
          color: colors.neutralVariant[300]!,
          label: 'Neutral Variant [300]',
        ),
        ColorItem(
          color: colors.neutralVariant[400]!,
          label: 'Neutral Variant [400]',
        ),
        ColorItem(
          color: colors.neutralVariant[500]!,
          label: 'Neutral Variant [500]',
        ),
        ColorItem(
          color: colors.neutralVariant[600]!,
          label: 'Neutral Variant [600]',
        ),
        ColorItem(
          color: colors.neutralVariant[700]!,
          label: 'Neutral Variant [700]',
        ),
        ColorItem(
          color: colors.neutralVariant[800]!,
          label: 'Neutral Variant [800]',
        ),
        ColorItem(
          color: colors.neutralVariant[900]!,
          label: 'Neutral Variant [900]',
        ),
        ColorItem(
          color: colors.neutralVariant[1000]!,
          label: 'Neutral Variant [1000]',
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class ColorItem extends StatelessWidget {
  final Color color;
  final String label;

  const ColorItem({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: double.infinity,
      color: color,
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: Text(label),
        ),
      ),
    );
  }
}
