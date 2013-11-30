$attack1=@ARGV[0];
$defend1=@ARGV[1];
$defend2=@ARGV[2];

@poketypes=(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,.5, 0, 1, 1,.5, 1,
            1,.5,.5, 1, 2, 2, 1, 1, 1, 1, 1, 2,.5, 1,.5, 1, 2, 1,
            1, 2,.5, 1,.5, 1, 1, 1, 2, 1, 1, 1, 2, 1,.5, 1, 1, 1,
            1, 1, 2,.5,.5, 1, 1, 1, 0, 2, 1, 1, 1, 1,.5, 1, 1, 1,
            1,.5, 2, 1,.5, 1, 1,.5, 2,.5, 1,.5, 2, 1,.5, 1,.5, 1,
            1,.5,.5, 1, 2,.5, 1, 1, 2, 2, 1, 1, 1, 1, 2, 1,.5, 1,
            2, 1, 1, 1, 1, 2, 1,.5, 1,.5,.5,.5, 2, 0, 1, 2, 2,.5,
            1, 1, 1, 1, 2, 1, 1,.5,.5, 1, 1, 1,.5,.5, 1, 1, 0, 2,
            1, 2, 1, 2,.5, 1, 1, 2, 1, 0, 1,.5, 2, 1, 1, 1, 2, 1,
            1, 1, 1,.5, 2, 1, 2, 1, 1, 1, 1, 2,.5, 1, 1, 1,.5, 1,
            1, 1, 1, 1, 1, 1, 2, 2, 1, 1,.5, 1, 1, 1, 1, 0,.5, 1,
            1,.5, 1, 1, 2, 1,.5,.5, 1,.5, 2, 1, 1,.5, 1, 2,.5,.5,
            1, 2, 1, 1, 1, 2,.5, 1,.5, 2, 1, 2, 1, 1, 1, 1,.5, 1,
            0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 1,.5,.5, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1,.5, 0,
            1, 1, 1, 1, 1, 1,.5, 1, 1, 1, 2, 1, 1, 2, 1,.5,.5,.5,
            1,.5,.5,.5, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1,.5, 2,
            1,.5, 1, 1, 1, 1, 2,.5, 1, 1, 1, 1, 1, 1, 2, 2,.5, 1);

#print"\n 1 - Normal\n 2 - Fire\n 3 - Water\n 4 - Electric\n 5 - Grass\n 6 - Ice\n 7 - Fighting\n 8 - Poison\n 9 - Ground\n10 - Flying\n11 - Psychic\n12 - Bug\n13 - Rock\n14 - Ghost\n15 - Dragon\n16 - Dark\n17 - Steel";

#print"\n\nEnter Attack Type:\n";$attack1=<STDIN>;chop $attack1;print"\nEnter Defending Types:\n";$defend1=<STDIN>;chop $defend1;$defend2=<stdin>;chop $defend2;

#$defend1-=1;$attack1-=1;
$defend2-=1;

#print("$attack1 $defend1 $defend2");

$effective = $poketypes[$attack1*18+$defend1];

if ($defend2>=0){
	$effective *= $poketypes[$attack1*18+$defend2];}


print($effective,"x effective");