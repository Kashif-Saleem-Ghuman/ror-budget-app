<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Pay Pros\] ](#-pay-pros-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [🚀 Video Project Presentation ](#-video-project-presentation-)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Database creation](#database-creation)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [or :](#or-)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Pay Pros] <a name="about-project"></a>

**This project is a web application designed to help users manage their personal budgets. The app allows users to create and store different categories for their expenses, and track transactions associated with each category. By organizing expenses into categories, users can easily see how much money they're spending in each area, as well as track individual transactions within each category. The user interface is designed to be user-friendly, so users can easily navigate the app and take advantage of its features.**
  <ul>
    <li>View categories for the logged in user </li>
    <li>logged in user can add their categories</li>
    <li>Logged in user can delete a category</li>   
    <li>Logged in user can make add purchases to a category</li> 
  </ul>

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Add new categories**
- **Delete categories**
- **Add new transactions for each category**
- **Authentication using Devise gem**
- **Authorization using Cancancan gem**
- **Splash screen showing the name of the App and options to log in/sign up**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- <a href="https://paypros.onrender.com/" target="_blank">Live Demo Link</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Video Project Presentation <a name="live-demo"></a>

- <a href="https://www.loom.com/share/c9731690e7044d419e01962d1f4b598a" target="_blank">-Video Project Presentation Link</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

> You need the following tools be installed in your computer:

> - [Rails](https://guides.rubyonrails.org/)
> - [Git](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/)
> - [Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md)
> - IDE
> - PostgreSQL

### Setup

Clone this repository to your desired folder:

```sh
  cd my-prefered-folder
  
  git clone https://github.com/Kashif-Saleem-Ghuman/ror-budget-app.git
```

### Install

Install this project with:

```sh
  cd ror-budget-app
  
  bundle install
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  rails server or rails s
```

### Run tests

To run tests, run the following command:

before you run the tests

```
rails db:seed RAILS_ENV=test
```

```sh
  rspec spec/
```

### or :
```
rspec spec/models
rspec spec/views
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Kashif**

- GitHub: [Kashif](https://github.com/Kashif-Saleem-Ghuman)
- Twitter: [Kashif](https://twitter.com/Kashif14Saleem)
- LinkedIn: [Kashif](https://www.linkedin.com/in/kashifsaleemghuman/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Hamburger menu for the mobile version**
- [ ] **Edit category name, purchase name and amount**
- [ ] **Some UX improvements: include transitions and/or animations, etc.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Kashif-Saleem-Ghuman/ror-budget-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give a⭐️ and share with your friends.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Thanks to the Microverse team for the great curriculum.
- Hat tip to anyone whose code was used
- I would like to thank "Gregoire Vella" for the [Amazing Design Template](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/Kashif-Saleem-Ghuman/ror-budget-app/blob/dev/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

