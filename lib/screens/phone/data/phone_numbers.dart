import '../models/phone_book.dart';
import '../models/phone_number.dart';

List<PhoneNumber> greenvilleList = [
  PhoneNumber(
    location: 'A Pod',
    locationSubtext: 'Unit Clerk',
    phoneNumber: '864-455-7899',
  ),
  PhoneNumber(
    location: 'C Pod',
    locationSubtext: 'Unit Clerk',
    phoneNumber: '864-455-1659',
  ),
  PhoneNumber(
    location: 'D Pod',
    locationSubtext: 'Unit Clerk',
    phoneNumber: '864-455-1659',
  ),
  PhoneNumber(
      location: 'Patient Flow Coordinator',
      locationSubtext: 'aka PFC',
      phoneNumber: '864-546-0192'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #1',
      phoneNumber: '864-455-3174'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #2',
      phoneNumber: '864-455-3175'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #3',
      phoneNumber: '864-455-3631'),
  PhoneNumber(
    location: 'CT',
    phoneNumber: '864-455-7474',
  ),
  PhoneNumber(
      location: 'Psych Social Work',
      locationSubtext: 'Office Phone',
      phoneNumber: '864-455-8094'),
  PhoneNumber(
      location: 'ED Case Management',
      locationSubtext: 'Office Phone',
      phoneNumber: '864-455-8094'),
  PhoneNumber(
      location: 'ED Case Management',
      locationSubtext: 'Cell Phone',
      phoneNumber: '864-238-2963')
];

List<PhoneNumber> greerList = [
  PhoneNumber(location: 'Unit Clerk', phoneNumber: '864-797-8600'),
  PhoneNumber(location: 'CT', phoneNumber: '864-797-8658'),
  PhoneNumber(location: 'Radiology', phoneNumber: '864-797-8686'),
  PhoneNumber(location: 'Ultrasound', phoneNumber: '864-797-8666'),
  PhoneNumber(location: 'MRI', phoneNumber: '864-797-8647'),
  PhoneNumber(location: 'Lab', phoneNumber: '864-797-8566')
];

final List<PhoneBook> phoneBookLocations = [
  PhoneBook(location: 'Greenville Memorial', numberList: greenvilleList),
  PhoneBook(location: 'Greer Memorial', numberList: greerList),
  PhoneBook(location: 'Hilcrest Memorial', numberList: greenvilleList),
  PhoneBook(location: 'Baptist Easley', numberList: greerList),
  PhoneBook(location: 'North Greenville', numberList: greenvilleList),
  PhoneBook(location: 'Oconee Memorial', numberList: greerList),
  PhoneBook(location: 'Laurens County Memorial', numberList: greenvilleList)
];
