<a name="readme-top"></a>


<div align="center">
  <br/>

  <h3><b>STARTER ONLINE APPLICATION</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [🙂 Best Part of My Code 🔥💯](#best-part)

<!-- PROJECT DESCRIPTION -->

# 📖 Starter Online Application <a name="about-project"></a>

**Starter Online Application** is a simple online platform that allows users to register, login and query data via APIs.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://html.com/">HTML</a></li>
    <li><a href="https://css.org/">CSS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>
To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
<ol>
  <li>Ruby 3.3.1</li>
  <li>Rails 7.1.3.2</li>
  <li>Node >= 16.0</li>
</ol>

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/SimonGideon/Starter-Online-Application
```

### Install

Install this project with:

```sh
  cd starterapp
  gem install
```

### Usage

To run the project, execute the following command (RECOMENDED: Run separately):

```sh
  rails db:create
  rails db:migrate
  rails s
```

### Run tests

To run tests, run the following command:
```sh
  rspec
```
## 🙂 Best Part of the code 🔥 <a name="best-part"></a>
Having a solid understanding of the authentication and cryptography behind most of the `auth gems`. I decided to work my auth from scratch using `bcrypt gem` for secure hashing of the passwords. Create a session after a check wheither the user exist and delete the session on log out. The rest of the pages can only be accessed by the authorizes user `current_user`.

Check here 👉 [Click Me](https://github.com/SimonGideon/Starter-Online-Application/blob/dev/app/models/user.rb#L3-L29) and also [Me](https://github.com/SimonGideon/Starter-Online-Application/blob/dev/app/controllers/sessions_controller.rb#L9-L19)


