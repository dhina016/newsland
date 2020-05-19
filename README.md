<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/dhina016/Expense-Management">
    <img src="assets/images/logo.png" alt="Logo" width="155" height="35">
  </a>

  <h3 align="center">Expense Management System</h3>

  <p align="center">
    This expense management system is used to add the product either inward or outward. In inward, you can add inward product and balance is increased. In outward, you can add outward product and balance is decreased. You get the report of inward and outward as pdf, excel, and print.
    <br />
    <a href="https://github.com/dhina016/Expense-Management"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/dhina016/Expense-Management/issues">Report Bug</a>
    ·
    <a href="https://github.com/dhina016/Expense-Management/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

![Product Name Screen Shot][product-screenshot]
    This expense management system is used to add the product either inward or outward. In inward, you can add inward product and balance is increased. In outward, you can add outward product and balance is decreased. You get the report of inward and outward as pdf, excel, and print.



### Built With

* [Bootsrap](https://getbootstrap.com/)
* [Jquery](https://jquery.com/)
* [Codeigniter](https://codeigniter.com/)

<!-- GETTING STARTED -->
## Getting Started

Follow the installation steps to open project without error

### Installation
 
1. Download and extract the project in htdocs
2. Create the database
3. Upload or Import expense.sql in your database 
4. Configure Base URL in application/config/config.php
```sh
$config['base_url'] = 'http://localhost/expense_manager/';
```
5. Configure Database in application/config/constants.php
```sh
defined('DATABASE_NAME')     OR define('DATABASE_NAME', 'your database name'); // Database Name
defined('DATABASE_USERNAME')       OR define('DATABASE_USERNAME', 'your database username'); // Database Username
defined('DATABASE_PASS')      OR define('DATABASE_PASS', 'your database password'); // Database Password
defined('DATABASE_HOST')      OR define('DATABASE_HOST', 'your hostname'); // Hostname
```
6. Configure Debug mode in application/config/database.php. development -> Show error, production -> Hide Error. Defalut Mode Production.
```sh
'db_debug' => (ENVIRONMENT !== 'production'),
Or
'db_debug' => (ENVIRONMENT !== 'development'),
```
7. If you face any error Like **@sqlMode**, set stricton -> true application/config/database.php.
```sh
'stricton' => FALSE,
To
'stricton' => TRUE,
```
7. Admin Login.
```sh
Username => socalled,
Password => 111111,
```
<!-- USAGE EXAMPLES -->
## Usage

Consider the situation, You are a chef of one restaurant and you want to monitor the profit amount. So here the expense management system works. A gang of 3 friends came to your restaurant and order 3 egg rice and 2 omelets. so you want 4 eggs and 1 kg of rice and plus some ingredients. Now you bought 5 eggs and rice in the store. Rice cost 40 rs and egg cost 5 rs. The total cost you spend 40+25(5*5) = 65. Now those friends eat well and paid you. The egg rice cost is 35 and omelet costs 10. Now you have 90(3*30)+20(2*10) = 110. So now you earned 70(135-65). This is how expense management works. Here Demo,
Inward -> Egg Rice, Omelete
Outward -> Egg, Rice

**1.Login** :
![S1][ss1]

**2.Dashboard** :
![S1][ss2]

**3.Add Cash** :
![S1][ss3]

**4.Manage Product** :
![S1][ss4]

**5.Dashboard After Add Product** :
![S1][ss5]

**6.Outward** :
![S1][ss6]

**7.Dashboard After Outward** :
![S1][ss7]

**8.View Inward** :
![S1][ss8]

**9.Dashboard After Inward** :
![S1][ss9]

**10.Dashboard Table Report** :
![S1][ss10]

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/dhina016/Expense-Management/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/dhina016/Expense-Management](https://github.com/dhina016/Expense-Management)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements


* [Concept Dashnoard](https://github.com/puikinsh/concept)
* [Font Awesome](https://fontawesome.com/)
* [Chart JS](https://www.chartjs.org/)






<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/dhina016/Expense-Management.svg?style=flat-square
[contributors-url]: https://github.com/dhina016/Expense-Management/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/dhina016/Expense-Management.svg?style=flat-square
[forks-url]: https://github.com/dhina016/Expense-Management/network/members
[stars-shield]: https://img.shields.io/github/stars/dhina016/Expense-Management.svg?style=flat-square
[stars-url]: https://github.com/dhina016/Expense-Management/stargazers
[issues-shield]: https://img.shields.io/github/issues/dhina016/Expense-Management.svg?style=flat-square
[issues-url]: https://github.com/dhina016/Expense-Management/issues
[license-shield]: https://img.shields.io/github/license/dhina016/Expense-Management.svg?style=flat-square
[license-url]: https://github.com/dhina016/Expense-Management/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/dhina016/
[product-screenshot]: assets/images/screenshot/bann.jpg
[ss1]: assets/images/screenshot/s1.png
[ss2]: assets/images/screenshot/s2.png
[ss3]: assets/images/screenshot/s3.png
[ss4]: assets/images/screenshot/s4.png
[ss5]: assets/images/screenshot/s5.png
[ss6]: assets/images/screenshot/s6.png
[ss7]: assets/images/screenshot/s7.png
[ss8]: assets/images/screenshot/s8.png
[ss9]: assets/images/screenshot/s9.png
[ss10]: assets/images/screenshot/s10.png

=======
