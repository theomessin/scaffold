import assert from "node:assert";
import { it } from "node:test";
import { main } from "../src/main.ts";

it("works", () => {
  assert.equal(main(), 0);
});
