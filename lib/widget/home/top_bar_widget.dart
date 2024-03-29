import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Row(
          children: [
            ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(Colors.green)),
                icon: const Icon(Icons.person),
                onPressed: () {},
                label: Text(role)),
            if (!isMobile) ...[
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.green)),
                  icon: const Icon(Icons.add_box_rounded),
                  onPressed: () {},
                  label: const Text("Add Blocks")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.green)),
                  icon: const Icon(Icons.toggle_off_outlined),
                  onPressed: () {},
                  label: const Text("Customize this Page"))
            ]
          ],
        )
      ],
    );
  }
}
