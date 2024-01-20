<a name="readme-top"></a>
<div align="center">
    <img src="./porag-logo.png" alt="logo" width="140"  height="auto" /><br/>
</div>
<div align="center">
    <h1><b>The Ruby on Rails Blog App</b></h1>
</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Author ](#author)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 About the Project <a name="about-project"></a>
**The Ruby on Rails Blog App** is a Rails [ruby on rails] Blog app a classic example of a blog website. A fully functional website that shows the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
<details>
  <summary>App</summary>
    <li><a href="https://guides.rubyonrails.org/index.html">Rails</a></li>
</details>

<!-- Features -->
### Key Features <a name="key-features"></a>
- **Create Database named Blog_app_development**
- **Create tables by migration files**
- **processing data in models**
- **Validations and Model specs**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby
    rails
    postgresql
    bundler
    rspec
```
### Rails application with PostgreSQL
To create a new Rails application with PostgreSQL as the database. Here's how you can do it:

1. First, make sure you have Rails installed. If not, you can install it with the following command:
```bash
gem install rails
```
2. Next, ensure PostgreSQL is installed and running on your machine.

3. Now you can create your new Rails application named "blog" with PostgreSQL as the database using the command you provided:
```bash
rails new ProjectName --database=postgresql
```
This will create a new Rails application in a directory named "blog" and configure it to use PostgreSQL for the database.

4. After running the command, be sure to update your `config/database.yml` file with the correct username and password for your PostgreSQL installation.

5. Finally, create the database with:
```bash
rake db:create
```
This will create a new PostgreSQL database for your application.
6. Now, remember to navigate into your new "ProjectName" directory before starting the Rails server with `rails server` or `rails s`.

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/porag-m06/The-Ruby-on-Rails-Blog-App.git
```

### Install
Install this project with:

```bash
  cd The-Ruby-on-Rails-Blog-App
  bundle install
  npm install --save-dev stylelint@13.x stylelint-scss@3.x stylelint-config-standard@21.x stylelint-csstree-validator@1.x
```
[More Details on RoR Linter Setup](https://github.com/microverseinc/linters-config/tree/master/ror)
It will install the required gemfile for running the project and linters (rubocop & stylelint).

### Usage
To run the project, execute the following command:
```sh
  rails server
```
To check & fix linters: 
```sh
  rubocop --color
  npx stylelint "**/*.{css,scss}"
```
To auto-correct: 
```bash 
   rubocop -a
   rubocop -A
```
### Troubleshooting

- If you are building an API-only Rails application
For API-only Rails applications you can remove the Stylelint config. To do so remove line no. [23](https://github.com/microverseinc/linters-config/blob/f0c812753d0418288c404ed4a441a2e7370e9f4e/ror/.github/workflows/linters.yml#L23) to [36](https://github.com/microverseinc/linters-config/blob/f0c812753d0418288c404ed4a441a2e7370e9f4e/ror/.github/workflows/linters.yml#L36) from the [linter.yml]((https://github.com/microverseinc/linters-config/blob/master/ror/.github/workflows/linters.yml)) file.

### Run tests
To run tests, run the following command:
```sh
  bundle exec rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="author"></a>
> Developed by: 
### Md. Porag Sarkar
- GitHub: [@porag-m06](https://github.com/porag-m06)
- Twitter: [@twitterhandle](https://twitter.com/rarebird06)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/muhammad-porag-nsu-cse/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>
 - Controllers.
 - Controller specs.
 - Views.
 - Forms.
 - Integration specs for Views and fixing n+1 problems.
 - Add Device.
 - Add authorization rules.
 - Add API endpoints.
 - API documentation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/porag-m06/Rails-Blog-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

As a tech enthusiast, your support is always appreciated. If you like this project please do let me know with your support in any way you see fit e.g. by give this project a start or sharing it with your friend who might like it as well.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgments <a name="acknowledgements"></a>
I would like to thank  [Microverse](https://github.com/microverseinc) for this project's info & guidelines.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ❓ FAQ <a name="faq"></a>
- **Can I fork this project?**
  - Yes, feel free to fork and knock yourself out :) . 

- **Can I share this project with others?**
  - Yes, you can share this project for any educational purposes. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

