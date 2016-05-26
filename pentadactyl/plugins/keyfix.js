eval("events.events.keyup = " + events.events.keyup.toString()
    .replace(/if \(!pass\)/, "if (!pass && !Events.isInputElement(dactyl.focusedElement))")
);
