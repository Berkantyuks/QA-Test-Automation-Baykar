## QA Test Automation for Baykar's Career Page
 ![RobotFramework](https://img.shields.io/badge/Robot%20Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)
 ![Selenium](https://img.shields.io/badge/Selenium-000000?style=for-the-badge&logo=Selenium&logoColor=white)
 ![Git](https://img.shields.io/badge/GIT-000000?style=for-the-badge&logo=git&logoColor=white)
 ![TEST-001-A](https://img.shields.io/badge/Test%20001%20A-000000?style=for-the-badge&logo=null&logoColor=white)
<a href="https://github.com/Berkantyuks/QA-Project-Test-Classification-Mark#test-class-a" rel="tc-a"><img width="79px" style="border-width: 0;" src="https://github.com/Berkantyuks/QA-Project-Test-Classification-Mark/blob/main/TCM-114x40/114x40-tc-a.png" alt="tc-a" /></a>
 
 <p>Software All-Encompassing QA Test Project For Baykar's Career Website. Automated tests are Designed for
be Easy-To-Read, Easy-To-Maintain and Easy-To-Understand. File Includes: </p>
 <ul>
 <li>User Guide</li>
 <li>How to Execute Automated Tests</li>
 <li>Automated Test Scenarios</li>
 <li>Automated Test Results</li>
 <li>Manual Test Scenarios</li>
 <li>Manual Test Results</li>
 <li>QA: General Opinion</li>
 <li>QA: Rating</li>
 </ul>
 <p>Overall System Score: B+, Given Test Class A Mark.(Please see QA PDF File for more info: Page 12.)<br/>
 For more information about <a href="https://github.com/Berkantyuks/QA-Project-Test-Classification-Mark">Test Classification Marks</a> visit project repo.
 </br> 
 
 Test File Index: TEST-001-A</p>
 
 ### Prepare and clone repository for TeamCity or Jenkins CI/CD
 
 First of all, install all requirements using pip.
 ```
pip install -r requirements.txt
 ```
 Download ChromeDriver in your computer and add Environment Variables path for Selenium.
 ```
https://chromedriver.chromium.org/
 ```
 [Optional] Clone for CI/CD integration.
 ```
https://github.com/Berkantyuks/QA-Test-Automation-Baykar.git
 ```
 ### Set Variables Before Running Tests
 
 ```robot framework
*** Variables ***
${SITE_URL} =    https://kariyer.baykartech.com/    # [!] DO NOT CHANGE SITE URL [!]
${BROWSER} =    chrome    # add browser driver in env. path before first run
${RUN_LANG} =    tr       # "tr" or "en" [!] lowercase [!]
 ```
 
 ### Execute Automated Tests
 
 Execute tests using terminal, for run all tests under tests folder then save results in <a href="https://github.com/Berkantyuks/QA-Test-Automation-Baykar/tree/main/Results">Results</a> folder.
 ```
robot -d results tests
 ```
 Execute by tag name.
 ```
 robot -d results -i "Common" tests
 ```
 Execute by test case name.
 ```
 robot -d results -t "Visitor should be able enter site" tests 
 ```
 
  ### Read Manual Tests
  
  Manual tests are executed last on 6/20/2022
  
| Step #  | Description                   | Expected Result              | Actual Result       | Execution Status |
| ------- | ----------------------------- | ---------------------------- | ------------------- | ---------------- |
| 1       | Visitor must enter site       | Show kariyer baykar homepage | Homepage opens      | PASS             |
| 2       | Visitor must navigate navbar  | Show dropdown menus          | Shows all dropdowns | PASS             |
| 3       | Visitor should be able to switch language  | Show English homepage  | English homepage opens | PASS   |
| ......... |

for more about manual tests visit to https://github.com/Berkantyuks/QA-Test-Automation-Baykar/blob/main/Documents/QA-Manual-Test-Baykar.pdf
 
 
 ### You Can Reach QA Test PDF File From Link Below
 <a href="https://github.com/Berkantyuks/QA-Test-Automation-Baykar/blob/main/Documents/Berkant-Yuksektepe-QA-Project-Updated.pdf">Berkant-Yuksektepe-QA-Project-Updated.pdf</a>
 
 <p>Or see in Readme file:</p>

![image](https://user-images.githubusercontent.com/61010367/176451854-e79b5d8c-ff5a-4006-9a46-6d90ae918617.png)
![image2](https://user-images.githubusercontent.com/61010367/176452189-5d8421d8-6619-47f8-903d-004ee358a4de.png)
![image3](https://user-images.githubusercontent.com/61010367/176452248-e4c0197f-f794-41cc-a411-24eda5ea6e7c.png)
![image4](https://user-images.githubusercontent.com/61010367/176452385-69c780a4-da1d-49dc-959d-8d629d29ae50.png)
![image5](https://user-images.githubusercontent.com/61010367/176452438-c96f010d-3faf-4a31-845f-0fcdbe9b31ce.png)
![image6](https://user-images.githubusercontent.com/61010367/176452518-d9bd7f02-3ce9-4791-8ea9-5407215a6e3c.png)
![image7](https://user-images.githubusercontent.com/61010367/176452640-0b3cf709-0dcc-4c01-bc96-35a3512e4faa.png)
![image8](https://user-images.githubusercontent.com/61010367/176452719-0a5e3a55-e14c-4777-8596-739e6b47cccb.png)
![image9](https://user-images.githubusercontent.com/61010367/176452931-2268fcd4-a2ab-406f-81b9-a10e156dc1df.png)
![image10](https://user-images.githubusercontent.com/61010367/176453008-4909fe83-7ac4-4aae-b281-12ed4a6983fa.png)
![image11](https://user-images.githubusercontent.com/61010367/176453071-2184e507-bc34-41c1-9559-8e7c2876c807.png)
![image12](https://user-images.githubusercontent.com/61010367/176453158-89a71ab3-5c7e-4323-95df-a51a6b3d65aa.png)















