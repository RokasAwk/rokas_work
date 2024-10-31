import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/pages/home/home_notifier.dart';

import '../../../l10n/l10n.dart';
import '../../resource/assets.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../utils/share_preferance_util.dart';
import '../widgets/developed_by_widget.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
    required this.size,
    required this.notifier,
  });

  final Size size;
  final HomeNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(alignment: Alignment.bottomRight, children: [
        Image.asset(
          Assets.warrior,
          opacity: const AlwaysStoppedAnimation(.5),
        ),
        ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.blueGray,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.boxShadow1,
                    radius: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    L10n.tr.page_home_drawer_default_user_name,
                    style: AppTextStyles.cnxW600WhiteXL,
                  ),
                  Row(
                    children: [
                      Text(
                        '${L10n.tr.page_home_drawer_user_exp}  ',
                        style: AppTextStyles.appW600WhiteMedium,
                      ),
                      SizedBox(
                          width: size.width * 0.4,
                          child: const LinearProgressIndicator(
                            value: 0.33,
                            minHeight: 3,
                            color: AppColors.b_2,
                            backgroundColor: AppColors.boxShadow2,
                          )),
                    ],
                  ),
                  Text(
                    L10n.tr.page_home_drawer_default_user_level('22'),
                    style: AppTextStyles.appW600WhiteSmall,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(L10n.tr.page_home_drawer_profile),
              onTap: () {
                notifier.goToProfilePage();
              },
            ),
            ListTile(
              title: Text(L10n.tr.page_home_drawer_missions),
              onTap: () {
                SharePreferenceUtil().setUserExp(111111);
              },
            ),
            ListTile(
              title: Text(L10n.tr.page_home_drawer_settings),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: DevelopedByWidget(),
            ),
          ],
        ),
      ]),
    );
  }
}
