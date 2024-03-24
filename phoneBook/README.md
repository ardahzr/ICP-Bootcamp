## Phone Book

This project contains a simple phone book smart contract (actor) written in the Motoko programming language and running on the Internet Computer Protocol (ICP). This smart contract allows users to add and query phone entries by name.

## Project Structure

The project utilizes Motoko's type system and the HashMap module to create a basic phone book. It provides a structure where entries containing phone numbers and associated descriptions can be added and queried.

## Modules and Functions Used

- **HashMap Module:** Used to create a mutable collection that maps names to phone entries.
- **Text Module:** Used to handle data of type text. Names, descriptions, and phone numbers are stored and processed as text.

## Defined Data Types

- **Name:** An alias for the Text type, representing names associated with phone entries.
- **Phone:** An alias for the Text type, used to store phone numbers as text.
- **Entry:** A record containing a description (desc) and a phone number (phone) for each entry.

## Smart Contract Functions

- **insert(name, entry):** This function allows users to add a new entry to the phone book. It takes the name and entry information as parameters and works asynchronously.
- **lookup(name):** This function queries the phone book for an entry using the name parameter. It returns a value of type ?Entry if the entry is found.

## How to Use

1. Import the necessary modules to start the smart contract.
2. Create a HashMap for the phone book.
3. Add new entries using the insert function if desired.
4. Query the phone book for entries using the lookup function.

This project is a good starting point for understanding the basics of the Motoko language and developing smart contracts.

For more information, please refer to the [Motoko Documentation](https://internetcomputer.org/docs/current/motoko/main/motoko).
