
s += delta_time / 1000000;

if (s >= 90) {
	if (time == 12) {
		time = 1;
	} else {
		time += 1;
	}
	s = 1;
}

