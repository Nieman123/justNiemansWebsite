import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills & Technologies",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColorLight),
          ),
          SizedBox(height: 16.0),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 1000;
              return Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  _SkillItem(FontAwesomeIcons.gamepad, "Unreal Engine + Unity",
                      isWide),
                  _SkillItem(FontAwesomeIcons.database, "Databases", isWide),
                  _SkillItem(FontAwesomeIcons.server, "Backend", isWide),
                  _SkillItem(
                      FontAwesomeIcons.mobile, "Mobile Development", isWide),
                  _SkillItem(FontAwesomeIcons.cloud, "CI/CD", isWide),
                  _SkillItem(FontAwesomeIcons.code, "C++", isWide),
                  _SkillItem(FontAwesomeIcons.gitAlt, "Git", isWide),
                  _SkillItem(FontAwesomeIcons.amazon, "AWS", isWide),
                  _SkillItem(FontAwesomeIcons.code, "Flutter", isWide),
                  _SkillItem(
                      FontAwesomeIcons.gamepad, "Game Development", isWide),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class _SkillItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isWide;

  const _SkillItem(this.icon, this.label, this.isWide);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,
            color: Theme.of(context).primaryColorLight,
            size: isWide ? 32.0 : 24.0),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(
              color: Theme.of(context).primaryColorLight,
              fontSize: isWide ? 16.0 : 12.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
