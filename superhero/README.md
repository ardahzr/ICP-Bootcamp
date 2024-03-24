## Superheroes Projesi
Bu proje, süper kahramanların oluşturulması, okunması, güncellenmesi ve silinmesi gibi temel işlemleri gerçekleştirmek için bir API sağlar. Veri depolama ve işleme için Trie veri yapısını kullanır.

## Proje, aşağıdaki temel işlevleri sağlayan bir API sunar:

- create(superhero: Superhero): Yeni bir süper kahraman oluşturur ve bir süper kahraman kimliği döndürür.
- read(superheroId: SuperheroId): Belirli bir süper kahramanın bilgilerini okur.
- update(superheroId: SuperheroId, superhero: Superhero): Varolan bir süper kahramanın bilgilerini günceller.
- delete(superheroId: SuperheroId): Bir süper kahramanı siler.

  ## API'nin kullanımıyla ilgili örnekler:

- Yeni bir süper kahraman oluşturmak
```
let NewSuperheroId = Superheroes.create({
  name: "Spider-Man",
  superpowers: ["Agility", "Web-slinging", "Spidey sense"]
}).
```
- Bir süper kahramanın bilgilerini okumak
```
let SuperheroInfo = Superheroes.read(NewSuperheroId).
```
- Bir süper kahramanın bilgilerini güncellemek
```
let UpdatedSuperhero = {
  name: "Spider-Man",
  superpowers: ["Agility", "Web-slinging", "Spidey sense", "Super strength"]
}.
let IsUpdated = Superheroes.update(NewSuperheroId, UpdatedSuperhero).
```
- Bir süper kahramanı silmek
```
let IsDeleted = Superheroes.delete(NewSuperheroId).
```
