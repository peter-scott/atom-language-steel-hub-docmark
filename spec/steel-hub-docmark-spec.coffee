describe "Steel-Hub docmark grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-steel-hub-docmark")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.docmark")

    it '', ->
      expect(grammar).toBeDefined()
      expect(grammar.scopeName).toBe "source.docmark"

