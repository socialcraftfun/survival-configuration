var rank = "%luckperms_meta_primarygroup%";

function playerPrivilege() {
	switch(rank){
		case "default":
			return "&7&o(отсутствует)";
			break;
		case "vip":
			return "&dVIP";
			break;
		case "investor":
			return "&2Инвестор";
			break;
		case "youtube":
			return "&c&lYou&f&lTube";
			break;
	}
}

playerPrivilege();