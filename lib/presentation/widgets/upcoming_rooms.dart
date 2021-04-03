part of 'widgets.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;
  const UpcomingRooms({
    Key key,
    @required this.upcomingRooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: upcomingRooms
              .map((room) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NOTE : this padding to handle if the emoji give extra padding so its not align, in this case we don't need it
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //       top: room.club.isNotEmpty ? 2.0 : 0),
                        //   child: Text(room.time),
                        // ),
                        Text(room.time),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (room.club.isNotEmpty)
                                Flexible(
                                  child: Text(
                                    "${room.club}  🏠".toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              Flexible(
                                  child: Text(
                                room.name,
                                overflow: TextOverflow.ellipsis,
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
