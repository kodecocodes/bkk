```metadata
number: "iv"
title: "Introduction"
section: 0
free: true
```

# Introduction

If you’ve been an Android developer even for a few months, you probably thought that the UI toolkit you use every day is not that easy to grasp. Over the years, as Android developed and grew as a platform, the tools for building user interfaces became more powerful and the design system became more beautiful.

Sadly, with all those changes and with newer versions of Android, the process of building interfaces became **more complex**. Additionally, it became increasingly harder to write code that supports all Android versions, as many new APIs and features aren’t fully backwards compatible. That means that building components from the standard toolkit doesn’t guarantee that those components will work on older versions of the operating system.

Moreover, as you start learning Android development, the first thing you notice is the overwhelming number of different programming and markup languages you need to learn. Not only do you find Android apps written in Kotlin or Java, but you also have to learn Groovy for your build scripts and XML for your UI development.

This **further increases the complexity** of learning Android development, and it makes it harder to follow the code. You have to read through multiple different files, just to learn how a single feature of the project works. If only there was a tool that uses Kotlin, has a clear syntax and lets you develop UI without much sweat...

Well, look no more! **Jetpack Compose** is the one UI toolkit to rule them all. It’s a fresh look at building user interfaces, providing:

- A Kotlin-powered API.
- Declarative ways to build the UI so it reacts to state changes.
- A powerful and composable set of components that you can combine, style and animate.

In this book, you’ll learn how to build a powerful app using Jetpack Compose, how to style your apps using Material Design, special animations and state transitions, how to use modifiers and much more! This book will serve you as a central point that holds all the information you need to dive deep into Jetpack Compose, then apply it to your personal and production level projects.

## How to read this book

The book is aimed at Android developers who aren’t familiar with Jetpack Compose and developers who know a little about the toolkit, but haven’t had the chance to use it.

If you’re **completely new to Jetpack Compose**, we recommend reading it one chapter at a time, in the **order of sections and chapters** shown in the table of contents.

If you’re **familiar with the fundamentals** of Jetpack Compose, you can skip to “Section II: Composing User Interfaces” instead. There, you'll continue learning about custom UI components, state management and best practices for styling your UI.

If  you’re **already using Jetpack Compose** in your projects but want to know about more complex topics and interoperability with legacy UI toolkits, jump to “Section III: Building Complex Apps With Jetpack Compose”. You’ll build complex use cases on a real-world project and learn about animations and the Compose lifecycle.

At whatever level of knowledge you are, it’s useful to check out the book structure and its contents. This book is split into three main sections:

### Section I: Getting Started With Jetpack Compose

Android UI Toolkit is **over 10 years old now**! Over the years, it has received numerous updates in terms of functionality, types of UI elements it provides and optimizations. But because of the way the UI team initially developed the toolkit, it also **grew in complexity and the amount of code** for even the simplest of components.

Finally, in 2020, a miracle happened: **Jetpack Compose**. The new UI toolkit was announced and started being seriously developed by Google. Jetpack Compose is a new and fresh toolkit, **built completely in Kotlin**, that offers a clean and **declarative** way to develop custom components and beautiful interfaces.

In this section, you’ll learn all about:

- The fundamental components Jetpack Compose provides.
- How to build common user interface components such as containers, navigation controls and lists.

In these four chapters, you’ll dive deep into the API and learn so much about this wonderful new UI toolkit.

### Section II: Composing User Interfaces

When working on apps and user interfaces, it’s not only important to know what each piece of the interface should be, but also how all these pieces **come together** to build a beautiful and fully-functional design that’ll wow your users.

Now that you’ve amassed quite a lot of knowledge about the basics of Jetpack Compose and its fundamental UI elements, you’re ready to dive deeper into building custom Compose elements, **managing their state** in a performant way and **styling them** using modifiers and built-in Material Design features.

Over the next four chapters, you’ll learn how to:

- Attach `LiveData` structures to your state management.
- Rely on different styling modifiers.
- Combine these topics to create a powerful UI!

You’ll build on the knowledge from the previous section of the book by learning new parts of the Jetpack Compose toolkit. 

### Section III: Building Complex Apps With Jetpack Compose

Now that you’ve built your app’s basic UI, it’s time to take it to another level. In this section, you’ll apply custom, complex designs that help you stand out from thousands of similar apps! This usually involves building **complex custom components** and applying **animations** to represent state changes when your users interact with the UI.

Over the next five chapters, you’ll dive deeper into the Jetpack Compose API to learn how to:

- Connect Compose UI to legacy Android code.
- React to Compose UI lifecycles.
- Animate different state changes and user interactions.

In the process, you’ll build an awesome app that represents a real-world project and you’ll apply some best practices to improve the **user experience**.

We hope you’re ready to jump in and enjoy getting to know the power of Jetpack Compose!