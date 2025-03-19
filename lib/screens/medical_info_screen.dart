import 'package:flutter/material.dart';
import 'login_signup_screen.dart';

class MedicalInfoScreen extends StatefulWidget {
  @override
  _MedicalInfoScreenState createState() => _MedicalInfoScreenState();
}

class _MedicalInfoScreenState extends State<MedicalInfoScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController allergiesController = TextEditingController();
  final TextEditingController medicalConditionsController = TextEditingController();
  final TextEditingController medicationsController = TextEditingController();
  final TextEditingController emergencyContactController = TextEditingController();

  String? selectedBloodGroup;
  final List<String> bloodGroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Information', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF203c8c),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildDropdown('Blood Group', bloodGroups, selectedBloodGroup, (String? value) {
              setState(() => selectedBloodGroup = value);
            }),
            SizedBox(height: 20),
            _buildTextField(heightController, 'Height (cm)', keyboardType: TextInputType.number),
            SizedBox(height: 20),
            _buildTextField(weightController, 'Weight (kg)', keyboardType: TextInputType.number),
            SizedBox(height: 20),
            _buildTextField(allergiesController, 'Allergies'),
            SizedBox(height: 20),
            _buildTextField(medicalConditionsController, 'Existing Medical Conditions'),
            SizedBox(height: 20),
            _buildTextField(medicationsController, 'Current Medications'),
            SizedBox(height: 20),
            _buildTextField(emergencyContactController, 'Emergency Contact', keyboardType: TextInputType.phone),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginSignupScreen()),
    );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
              child: Text('Save & Finish', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> items, String? selectedValue, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      onChanged: onChanged,
      items: items.map((item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
