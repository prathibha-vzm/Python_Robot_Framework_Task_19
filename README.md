# Robot Framework

## Framework  
**Robot Framework**  
  
### **Type:** Open-source automation framework  
### **Purpose:** Supports test automation and robotic process automation (RPA)
  
### **Key Features**:
1. Easy syntax (keyword-driven)
2. Readable and maintainable test cases
3. Extensive library support (Selenium, REST, etc.)
4. Generates detailed HTML reports and logs

### **Test Type Used**:
1. Functional Testing – Tests the login functionality of a web app.
2. UI Testing – Validates the visibility of UI elements like login fields and dashboard.

### **Project Structure**:
1. resources - Contains the keywords, variables and actions on the element
2. tests - Contains the test cases to run and libraries, resource files path, suite setup and teardown
3. screenshots - Captures the screenshots
4. log.html, report.html, selenium-screenshot, output.xml - Will be geenerated after test execution by Robot framework

### **To run the Tests**
<pre> <code>robot tests/verify_login_test.robot</code> </pre>


   
