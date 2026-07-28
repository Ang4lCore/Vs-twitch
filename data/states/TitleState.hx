import funkin.menus.IntroText;

function postCreate() {
    titleLines.set(1, new IntroText(["Ang4lCore", "F1rcoffee"]));
    titleLines.set(3, new IntroText(["Ang4lCore","F1rcoffee", "present"]));

    titleLines.set(5, new IntroText(["About team", "support"]));
    titleLines.set(7, new IntroText(["About team", "support", "my Discord server"]));
    // titleLines.set(5, new IntroText(We worked hard on the mod));
    // titleLines.set(7, new IntroText(Please don't judge too harshly XD));

    titleLines.set(13, new IntroText(["Vs"]));
    titleLines.set(14, new IntroText(["Vs", "Twitch"]));
    titleLines.set(15, new IntroText(["Vs", "Twitch", "LETS GOOOOO"]));
}