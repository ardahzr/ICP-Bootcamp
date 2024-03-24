## Superheroes Project

This project provides an API for performing basic operations on superheroes, such as creating, reading, updating, and deleting them. It utilizes the Trie data structure for data storage and processing.

## The project offers an API with the following core functionalities:

- **create(superhero: Superhero):** Creates a new superhero and returns a superhero ID.
- **read(superheroId: SuperheroId):** Reads the information of a specific superhero.
- **update(superheroId: SuperheroId, superhero: Superhero):** Updates the information of an existing superhero.
- **delete(superheroId: SuperheroId):** Deletes a superhero.

## Examples of using the API:

- **Creating a new superhero:**

```javascript
let NewSuperheroId = Superheroes.create({
  name: "Spider-Man",
  superpowers: ["Agility", "Web-slinging", "Spidey sense"]
});
```

- **Reading a superhero's information:**

```javascript
let SuperheroInfo = Superheroes.read(NewSuperheroId);
```

- **Updating a superhero's information:**

```javascript
let UpdatedSuperhero = {
  name: "Spider-Man",
  superpowers: ["Agility", "Web-slinging", "Spidey sense", "Super strength"]
};
let IsUpdated = Superheroes.update(NewSuperheroId, UpdatedSuperhero);
```

- **Deleting a superhero:**

```javascript
let IsDeleted = Superheroes.delete(NewSuperheroId);
```
