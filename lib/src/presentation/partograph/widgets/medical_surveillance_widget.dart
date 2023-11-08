import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MedicalSurveillanceWidget extends StatelessWidget {
  const MedicalSurveillanceWidget({super.key, required this.list});

  final List<MedicalSurveillanceItem>? list;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 10),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Table(
              border: TableBorder.all(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5),
              ),
              defaultColumnWidth: const IntrinsicColumnWidth(),
              columnWidths: const {0: FixedColumnWidth(130)},
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 2,
                        ),
                        child: Text(
                          ' ',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    for (int i = 0; i <= 15; i++)
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            vertical: 1,
                            horizontal: 10,
                          ),
                          child: Text(
                            String.fromCharCode(97 + i),
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Tiempo',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value: i >= list!.length
                            ? ' '
                            : '${list![i].time.hour} : ${list![i].time.minute}',
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Posicion Materna',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value:
                            i >= list!.length ? ' ' : list![i].maternalPosition,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Presion Arterial',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value:
                            i >= list!.length ? ' ' : list![i].arterialPressure,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Pulso Materno',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value: i >= list!.length ? ' ' : list![i].maternalPulse,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Frec. Cardiaca Fetal',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value:
                            i >= list!.length ? ' ' : list![i].fetalHeartRate,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Duracion Contracciones',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value: i >= list!.length
                            ? ' '
                            : list![i].contractionsDuration,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Frec. Contracciones',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value: i >= list!.length
                            ? ' '
                            : list![i].frequencyContractions,
                      ),
                  ],
                ),
                TableRow(
                  children: [
                    const HeaderItem(
                      value: 'Dolor',
                    ),
                    for (int i = 0; i <= 15; i++)
                      Item(
                        value:
                            i >= list!.length ? ' ' : list![i].pain.painValue,
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String? value;

  const Item({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
        child: Text(
          value!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  final String value;

  const HeaderItem({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
