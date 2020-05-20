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
  <a href="https://github.com/dhina016/newsland">
    <img src="screenshot/logo.png" alt="Logo" width="155" height="35">
  </a>

  <h3 align="center">Newsland</h3>

  <p align="center">
Newsland is basic webapplication using flask. This is my first flask app. So, it may contains errors and its a simple news feed website. The guest can see the news only. After registration you can able to post news and edit your news. Then having admin login. Admin can access to post, edit, pin the news feed. Its very simple and basic concept. You can use this source to understand the working flask and jinja code. 
    <br />
    <a href="https://github.com/dhina016/newsland"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/dhina016/newsland/issues">Report Bug</a>
    ·
    <a href="https://github.com/dhina016/newsland/issues">Request Feature</a>
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



<!-- ABOUT THE PROJECT -->
## About The Project

![Product Name Screen Shot][product-screenshot]
  
Newsland is basic webapplication using flask. This is my first flask app. So, it may contains errors and its a simple news feed website. The guest can see the news only. After registration you can able to post news and edit your news. Then having admin login. Admin can access to post, edit, pin the news feed. Its very simple and basic concept. You can use this source to understand the working flask and jinja code


### Built With

* [Bootsrap](https://getbootstrap.com/)
* [Flask](https://flask.palletsprojects.com/en/1.1.x/)
* [Jinja](https://jinja.palletsprojects.com/en/2.11.x/)

<!-- GETTING STARTED -->
## Getting Started

Follow the installation steps to open project without error

### Installation
 
1. Download and extract the project
2. I'm using xampp, so you can also use it and Create the database
3. Upload or Import flask.sql in your database. 
4. Download python 3.x and install on your PC. My pc is 64bit so i installed Python3(64bit). Set environmental variable for both python and pip or else you get command not found.
5. I've used virtual environment. It's not necessary, but using virtual environment is preferable.
Note: You can skip the 5th step if you don't want virtual environment
(i) Make sure you've set your python path in environmental variable and then install 
```sh

python -m venv venv

```
(ii) I've already created. So now you want to activate it. I'm using windows. so I used CMD. Now open the cmd of your current project folder. My project folder is newsland.
```sh

D:\flask\newsland> cd /venv/Scripts/activate

After venv is activated

(venv) D:\flask\newsland>

```
(iii) Once you can close the project, this command is user to open the venv again and for deactivation command also given.
```sh

D:\flask\newsland>workon venv

If not working again activate your venv

(venv) D:\flask\newsland>

For Deactivating,

D:\flask\newsland> cd /venv/Scripts/deactivate

```
6. Install the following requirements by following command.
```sh

D:\flask\newsland> pip install -r requirements.txt

```
7. To run the the code, use this command 
```sh

D:\flask\newsland>python app.py

or

D:\flask\newsland>flask run

```

8. If you get any error, make sure you've done following things 
```sh

1. Python version should be 3.x.
2. Settingup Environment variables.
3. Installed all requirements without errors.
4. I am using 64 bit. If you are using 32 Bit google it and fix it.
5. Check the server is active or not.
6. Imported sql file.
7. Everything is done.
```
9. Admin Login.
```sh
url : http://127.0.0.1:5000/admin
Username => admin,
Password => 111111,

```
<!-- USAGE EXAMPLES -->
## Usage

Newsland is a webapp for posting latest news. This newsland is very simple to use. Images are given below
**1.Requirments** :
![S1][ss1]

**2.Welcome Page** :
![S1][ss2]

**3.News as Guest** :
![S1][ss3]

**4.Contact** :
![S1][ss4]

**5.Register** :
![S1][ss5]

**6.Login** :
![S1][ss6]

**7.News as User** :
![S1][ss7]

**8.Add News** :
![S1][ss8]

**9.EditNews** :
![S1][ss9]

**9.Search by title** :
![S1][ss10]

**10.News as Admin and Pin** :
![S1][ss11]

**11.Filter by Name** :
You can also filter by name, date, category...
![S1][ss12]

**12.Logout** :
![S1][ss13]

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/dhina016/newsland/issues) for a list of proposed features (and known issues).



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

Project Link: [https://github.com/dhina016/newsland](https://github.com/dhina016/newsland)




<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/dhina016/newsland.svg?style=flat-square
[contributors-url]: https://github.com/dhina016/newsland/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/dhina016/newsland.svg?style=flat-square
[forks-url]: https://github.com/dhina016/newsland/network/members
[stars-shield]: https://img.shields.io/github/stars/dhina016/newsland.svg?style=flat-square
[stars-url]: https://github.com/dhina016/newsland/stargazers
[issues-shield]: https://img.shields.io/github/issues/dhina016/newsland.svg?style=flat-square
[issues-url]: https://github.com/dhina016/newsland/issues
[license-shield]: https://img.shields.io/github/license/dhina016/newsland.svg?style=flat-square
[license-url]: https://github.com/dhina016/newsland/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/dhina016/
[product-screenshot]: screenshot/bann.png
[ss1]: screenshot/ss1.png
[ss2]: screenshot/bann.png
[ss3]: screenshot/ss2.png
[ss4]: screenshot/ss3.png
[ss5]: screenshot/ss4.png
[ss6]: screenshot/ss5.png
[ss7]: screenshot/ss6.png
[ss8]: screenshot/ss7.png
[ss9]: screenshot/ss8.png
[ss10]: screenshot/ss9.png
[ss11]: screenshot/ss10.png
[ss12]: screenshot/ss11.png
[ss13]: screenshot/ss12.png

=======
