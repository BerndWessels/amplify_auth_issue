import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class ResponsiveConstants {
  static const double mobileBreakpoint = 480;
  static const double tabletBreakpoint = 800;
  static const double desktopBreakpoint = 1200;
}

final class ResponsiveWidthBuilder extends StatelessWidget {
  ResponsiveWidthBuilder({
    super.key,
    required this.child,
  });

  final Widget? child;

  final List<Breakpoint> _breakpoints = <Breakpoint>[
    const Breakpoint(
      start: 0,
      end: ResponsiveConstants.mobileBreakpoint,
      name: MOBILE,
    ),
    const Breakpoint(
      start: ResponsiveConstants.mobileBreakpoint + 1,
      end: ResponsiveConstants.tabletBreakpoint,
      name: TABLET,
    ),
    const Breakpoint(
      start: ResponsiveConstants.tabletBreakpoint + 1,
      end: double.infinity,
      name: DESKTOP,
    ),
  ];

  List<Condition<double>> _getResponsiveWidth(BuildContext context) =>
      <Condition<double>>[
        const Condition<double>.equals(
          name: MOBILE,
          value: ResponsiveConstants.mobileBreakpoint,
        ),
        const Condition<double>.equals(
          name: TABLET,
          value: ResponsiveConstants.tabletBreakpoint,
        ),
        Condition<double>.equals(
            name: DESKTOP,
            value: MediaQuery.of(context)
                .size
                .width //ResponsiveConstants.desktopBreakpoint,
            ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      child: Builder(
        builder: (context) => ResponsiveScaledBox(
          width: ResponsiveValue<double>(
            context,
            defaultValue: ResponsiveConstants.mobileBreakpoint,
            conditionalValues: _getResponsiveWidth(context),
          ).value,
          child: child!,
        ),
      ),
      breakpoints: _breakpoints,
    );
  }
}
