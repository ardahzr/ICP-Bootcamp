## Motoko todoApp

## Introduction

This project is a simple to-do list smart contract (actor) built using the Motoko programming language on the Internet Computer Protocol (ICP). This contract allows users to add, complete, and remove tasks based on their names.

## Project Structure

The project utilizes Motoko's type system and modules like HashMap, Hash, Nat, Iter, and Text to create a functional to-do list application.

## Modules and Functions Used

- **HashMap Module:** Used to create a mutable collection that maps task names to their corresponding information.
- **Hash Module:** Used to hash text data.
- **Nat Module:** Used to work with natural numbers.
- **Iter Module:** Used for looping and iteration operations.
- **Text Module:** Used to work with text data.

## Data Types Defined

- **ToDo:** A record type defined for a single to-do task. This record contains fields for a description and completion status.

## Smart Contract Functions

- **getTodos():** Used to retrieve a list of all to-do tasks.
- **addTodo(description):** Used to add a new to-do task.
- **completeTodo(id):** Used to mark a specific to-do task as completed.
- **showTodos():** Used to display all to-do tasks.
- **clearCompleted():** Used to clear all completed tasks.

## How to Use?

1. Import the necessary modules to start the smart contract.
2. Create a HashMap for the to-do list.
3. Add, mark, or clear to-do tasks as desired.

This project can be a great example for learning how to build and use smart contracts with the Motoko language. For more information, you can refer to the [Motoko Documentation](https://internetcomputer.org/docs/current/motoko/main/motoko).
