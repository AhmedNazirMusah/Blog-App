<a name="readme-top"></a>


# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
(#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 BLOG APP <a name="about-project"></a>


**Blog App** is a blog website that shows the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Ruby on Rails

<details>
  <summary>Client</summary>
  <ul>
    <li>Ruby</li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Rails.js</li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>



## 🚀 Live Demo <a name="live-demo"></a>


- [Coming soon]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

> To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 gem install ruby
 gem install rails
```
 -->

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
  bundle install
  rails db:create 
  rails db:migrate
```

### Install

Install this project with:

```sh
  cd my-project
```


### Usage

To run the project, execute the following command:

```sh
  cd Blog-app
  rails c
  To create users :

 irb(main):001:0> first_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.',post_counter: 0)
  
  irb(main):001:0> second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.',post_counter: 0) 

  create post :
  
  irb(main):001:0> first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post',likes_counter:0, comments_counter: 0)
  
  create cpmment :

  irb(main):001:0> Comment.create( author: second_user, post: first_post, text: 'Hi Tom!')
  
  start server :
  
  /Blog-App$ rails crails server
```

### Run tests

To run tests, run the following command:


```sh
rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Ahmed Nazir Musah**
- GitHub: [@ahmednazirmusah](https://github.com/AhmedNazirMusah)
- Twitter: [@ahmednazirmush](https://twitter.com/ahmednazirmusah)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ahmed-nazir-musah-529956214)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Future Features <a name="key-features"></a>

- **Forms**
- **Authentication**


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AhmedNazirMusah/Blog-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## ⭐️ Show your support <a name="support"></a>

If you like this project feel free to leave a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank all those who inspired this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
