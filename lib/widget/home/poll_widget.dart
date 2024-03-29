// ignore_for_file: must_be_immutable
import 'package:better_polls/better_polls.dart';
import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';

class PollWidget extends StatelessWidget {
  PollWidget({super.key, required this.onVote});

  Function(int)? onVote;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Poll",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "View Response",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Question 2",
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Your Favorite Tagline for India Post Payment Banks",
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Polls(
              children: [
                // This cannot be less than 2, else will throw an exception
                Polls.options(
                    title: 'The Bank For Every Indian', value: option1),
                Polls.options(title: 'Aapka Bank Aap Tak', value: option2),
                Polls.options(title: 'Desh Ka Bank', value: option3),
                Polls.options(title: 'Aapka Bank Aapke Dhar', value: option4),
              ],
              optionBarRadius: 24,
              borderWidth: 1,
              optionHeight: 40,
              currentUser: user,
              creatorID: creator,
              voteData: usersWhoVoted,
              userChoice: usersWhoVoted[user],
              onVoteBorderColor: Colors.deepPurple,
              voteCastedBorderColor: Colors.transparent,
              onVoteBackgroundColor: Colors.green,
              leadingBackgroundColor: Colors.lightGreen,
              backgroundColor: Colors.white,
              onVote: onVote,
            )
          ],
        ),
      ),
    );
  }
}
