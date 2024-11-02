import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/core/extensions/debug.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/src/address/providers/add_address_provider.dart';
import 'package:mithzar/src/shared/components/app_loader.dart';
import 'package:mithzar/src/shared/utils/validation_mixin.dart';

class AddAddressBottomSheet extends ConsumerStatefulWidget {
  const AddAddressBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddAddressBottomSheetState();
}

class _AddAddressBottomSheetState extends ConsumerState<AddAddressBottomSheet>
    with ValidationMixin {
  final _form = GlobalKey<FormState>();

  final nameCtrl = TextEditingController(text: 'Kisan Shah'.ifDebug);
  final phoneCtrl = TextEditingController(text: '7977547951'.ifDebug);
  final pincodeCtrl = TextEditingController(text: '123456'.ifDebug);
  final cityCtrl = TextEditingController(text: 'Mumbai'.ifDebug);
  final stateCtrl = TextEditingController(text: 'Maharashtra'.ifDebug);
  final addressLine1Ctrl = TextEditingController(
    text: 'RN9, Samarth Society, Rathodi Market'.ifDebug,
  );
  final addressLine2Ctrl =
      TextEditingController(text: 'Marve Road, Malad West'.ifDebug);
  final landmarkCtrl = TextEditingController(text: 'Near Gopal Hotel'.ifDebug);

  final states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu and Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'gujarati',
    'Meghalaya',
    'mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  void dispose() {
    nameCtrl.dispose();
    phoneCtrl.dispose();
    pincodeCtrl.dispose();
    cityCtrl.dispose();
    stateCtrl.dispose();
    addressLine1Ctrl.dispose();
    addressLine2Ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Add Address'),
            const Gap(30),
            TextFormField(
              controller: nameCtrl,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: context.text.regular14,
              validator: (value) => requiredField(value, label: 'Name'),
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            TextFormField(
              controller: phoneCtrl,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: context.text.regular14,
              validator: validatePhone,
              maxLength: 10,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                counterText: '',
                labelText: 'Phone',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButtonFormField<String>(
                      validator: (value) =>
                          requiredField(value, label: 'State'),
                      style: context.text.regular14,
                      decoration: const InputDecoration(
                        labelText: 'State',
                        contentPadding: EdgeInsets.all(10),
                        labelStyle: TextStyle(fontSize: 13),
                      ),
                      selectedItemBuilder: (context) {
                        return List.generate(
                          states.length,
                          (index) {
                            return Text(
                              'state',
                              style: context.text.regular14,
                              overflow: TextOverflow.ellipsis,
                            );
                          },
                        );
                      },
                      items: List.generate(
                        states.length,
                        (index) {
                          final state = states[index];
                          return DropdownMenuItem(
                            value: state,
                            child: Text(
                              state,
                              style: context.text.regular14,
                            ),
                          );
                        },
                      ),
                      onChanged: (String? value) {
                        stateCtrl.text = value ?? '';
                        _form.currentState?.validate();
                      },
                    ),
                  ),
                ),
                const Gap(15),
                Flexible(
                  child: TextFormField(
                    controller: cityCtrl,
                    validator: (value) => requiredField(value, label: 'City'),
                    style: context.text.regular14,
                    decoration: const InputDecoration(
                      labelText: 'City',
                      labelStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            TextFormField(
              validator: (value) => requiredField(value, label: 'Field'),
              style: context.text.regular14,
              controller: addressLine1Ctrl,
              decoration: const InputDecoration(
                labelText: 'Flat, House no., Building, Apartment',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            TextFormField(
              validator: (value) => requiredField(value, label: 'Field'),
              style: context.text.regular14,
              controller: addressLine2Ctrl,
              decoration: const InputDecoration(
                labelText: 'Area, Street, Road',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            TextFormField(
              validator: (value) => requiredField(value, label: 'Pincode'),
              style: context.text.regular14,
              controller: pincodeCtrl,
              decoration: const InputDecoration(
                labelText: 'Pincode',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            TextFormField(
              controller: landmarkCtrl,
              style: context.text.regular14,
              decoration: const InputDecoration(
                labelText: 'Landmark',
                labelStyle: TextStyle(fontSize: 13),
              ),
            ),
            const Gap(20),
            Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(addressTypeProvider);
                final notifier = ref.read(addressTypeProvider.notifier);
                return Wrap(
                  spacing: 10,
                  children: List.generate(
                    AddressTypeEnum.values.length,
                    (index) {
                      final type = AddressTypeEnum.values[index];
                      final selected = state == type;
                      return ChoiceChip(
                        selected: selected,
                        side: const BorderSide(),
                        selectedColor: context.colors.primary,
                        onSelected: (value) {
                          notifier.update(type);
                        },
                        label: Text(
                          type.name.toTitleCase(),
                          style: context.text.regular14.copyWith(
                            color: selected
                                ? context.colors.inputBackground
                                : null,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const Gap(20),
            Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(primaryAddressToggleProvider);
                final notifier =
                    ref.read(primaryAddressToggleProvider.notifier);
                return GestureDetector(
                  onTap: notifier.toggle,
                  child: Row(
                    children: [
                      Checkbox(
                        value: state,
                        onChanged: (value) => notifier.toggle(),
                      ),
                      const Gap(10),
                      Text(
                        'Make this my default address',
                        style: context.text.regular14,
                      ),
                    ],
                  ),
                );
              },
            ),
            const Gap(30),
            Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(saveAddressProvider);
                if (state.isLoading) {
                  return const AppLoader();
                }
                return child!;
              },
              child: ElevatedButton(
                onPressed: () {
                  if (_form.currentState?.validate() != true) {
                    return;
                  }
                  final primary = ref.read(primaryAddressToggleProvider);
                  final type = ref.read(addressTypeProvider);
                  final notifier = ref.read(saveAddressProvider.notifier);
                  final address = Address(
                    addressLine1: addressLine1Ctrl.text,
                    addressLine2: addressLine2Ctrl.text,
                    city: cityCtrl.text,
                    country: 'India',
                    landmark: landmarkCtrl.text,
                    postalCode: pincodeCtrl.text,
                    state: stateCtrl.text,
                    primary: primary,
                    type: type,
                  );
                  notifier.save(address);
                },
                child: const Text('Save'),
              ),
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
