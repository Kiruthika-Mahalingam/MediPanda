// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/upload_screen.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'User Profile',
//           style: TextStyle(color: Colors.white), // Set title text color to white
//         ),
//         backgroundColor: Color(0xFF203c8c), // Updated app bar color
//       ),
//       body: SingleChildScrollView( // Added scroll functionality
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)), // Updated label color
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Age',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)), // Updated label color
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Medical History',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)), // Updated label color
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               // New TextFields for Location
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'City',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'State',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Country',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               // Additional fields for Street Address and Zip Code
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Street Address',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Zip Code',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               // New fields for Blood Group, Height, Weight, Allergies, and Phone Number
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Blood Group',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Height',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Weight',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Allergies',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Phone Number',
//                   labelStyle: TextStyle(color: Color(0xFF203c8c)),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => UploadScreen()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF203c8c), // Updated button color
//                 ),
//                 child: Text('Next', style: TextStyle(color: Colors.white)), // Set button text color to white
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'medical_info_screen.dart'; // Import the next screen

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  String? selectedGender;
  String? selectedCountry;

  final List<String> genders = ['Male', 'Female', 'Other'];
  final List<String> countries = ['India', 'USA', 'UK', 'Canada', 'Australia'];

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        dobController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF203c8c),
        centerTitle: true,
        elevation: 4,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF203c8c), Color(0xFF1a237e)], 
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50, color: Color(0xFF203c8c)),
              ),
              const SizedBox(height: 20),
              _buildProfileField(Icons.person, "Full Name", nameController),
              _buildDateField(),
              _buildDropdown(Icons.wc, "Gender", genders, selectedGender, (String? value) {
                setState(() => selectedGender = value);
              }),
              _buildProfileField(Icons.phone, "Phone Number", phoneController, keyboardType: TextInputType.phone),
              _buildProfileField(Icons.email, "Email", emailController, keyboardType: TextInputType.emailAddress),
              _buildProfileField(Icons.location_on, "Street Address", addressController),
              _buildProfileField(Icons.location_city, "City", cityController),
              _buildProfileField(Icons.map, "State", stateController),
              _buildDropdown(Icons.flag, "Country", countries, selectedCountry, (String? value) {
                setState(() => selectedCountry = value);
              }),
              _buildProfileField(Icons.pin_drop, "Zip Code", zipController, keyboardType: TextInputType.number),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalInfoScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF203c8c),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  elevation: 3,
                ),
                child: const Text('Next', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileField(IconData icon, String label, TextEditingController controller, {TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(2, 2))],
        ),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Color(0xFF203c8c)),
            labelText: label,
            labelStyle: const TextStyle(color: Color(0xFF203c8c), fontWeight: FontWeight.w500),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          ),
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(2, 2))],
        ),
        child: TextField(
          controller: dobController,
          readOnly: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.calendar_today, color: Color(0xFF203c8c)),
            labelText: 'Date of Birth',
            labelStyle: const TextStyle(color: Color(0xFF203c8c), fontWeight: FontWeight.w500),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            suffixIcon: IconButton(
              icon: Icon(Icons.date_range, color: Color(0xFF203c8c)),
              onPressed: () => _selectDate(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(IconData icon, String label, List<String> items, String? selectedValue, Function(String?) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(2, 2))],
        ),
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          onChanged: onChanged,
          items: items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Color(0xFF203c8c)),
            labelText: label,
            labelStyle: const TextStyle(color: Color(0xFF203c8c), fontWeight: FontWeight.w500),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          ),
        ),
      ),
    );
  }
}
