import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import 'my_schedule_model.dart';

class MySchedule extends StatelessWidget {
  const MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? Colors.black : Colors.white;
    final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
    final size = MediaQuery.of(context).size;

    final list = MyScheduleModel.list;
    return Scaffold(
      backgroundColor: colour2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colour1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 25,
                                child: Image(
                                  image: AssetImage(list[index].statusIcon),
                                )),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index].bookingStatus.toUpperCase(),
                                    style: txtTheme.subtitle1!.apply(
                                        color: list[index].bookingStatusColor,
                                        fontSizeFactor: 0.7,
                                        fontWeightDelta: 2),
                                  ),
                                  Text(
                                    list[index].bookingDate,
                                    style: txtTheme.subtitle2,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "From".toUpperCase(),
                                          style: txtTheme.subtitle1!.apply(
                                              color: Colors.grey,
                                              fontSizeFactor: 0.7,
                                              fontWeightDelta: 2),
                                        ),
                                        Text(
                                          "To".toUpperCase(),
                                          style: txtTheme.subtitle1!.apply(
                                              color: Colors.grey,
                                              fontSizeFactor: 0.7,
                                              fontWeightDelta: 2),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[index].bookingTimingFrom,
                                          style: txtTheme.subtitle1!
                                              .apply(fontSizeFactor: 0.7),
                                        ),
                                        Text(
                                          list[index].bookingTimingTo,
                                          style: txtTheme.subtitle1!
                                              .apply(fontSizeFactor: 0.7),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 45,
                                child: GestureDetector(onTap: list[index].bookingOnPressed,
                                  child: Image(
                                    image:
                                        AssetImage(list[index].bookingItemImage),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.device_unknown,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Booking Id".toUpperCase(),
                                          style: txtTheme.subtitle1!.apply(
                                              color: Colors.grey,
                                              fontSizeFactor: 0.7,
                                              fontWeightDelta: 2),
                                        ),
                                        Text(
                                          list[index].bookingId,
                                          style: txtTheme.subtitle2,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.date_range_outlined,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Booking Request".toUpperCase(),
                                          style: txtTheme.subtitle1!.apply(
                                              color: Colors.grey,
                                              fontSizeFactor: 0.7,
                                              fontWeightDelta: 2),
                                        ),
                                        Text(
                                          list[index].bookingRequestDate,
                                          style: txtTheme.subtitle2,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
