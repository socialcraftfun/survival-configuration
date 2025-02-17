var placeholder = "%plasmovoice_installed%";
var voice = PlaceholderAPI.static.setPlaceholders(BukkitPlayer, placeholder);

var checkVoice = function (voice) {
  return voice === "true" ? " &a●&f | " : " &c●&f | ";
};

checkVoice(voice);
