package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class Packets {
    public static final int SSH_DISCONNECT_AUTH_CANCELLED_BY_USER = 13;
    public static final int SSH_DISCONNECT_BY_APPLICATION = 11;
    public static final int SSH_DISCONNECT_COMPRESSION_ERROR = 6;
    public static final int SSH_DISCONNECT_CONNECTION_LOST = 10;
    public static final int SSH_DISCONNECT_HOST_KEY_NOT_VERIFIABLE = 9;
    public static final int SSH_DISCONNECT_HOST_NOT_ALLOWED_TO_CONNECT = 1;
    public static final int SSH_DISCONNECT_ILLEGAL_USER_NAME = 15;
    public static final int SSH_DISCONNECT_KEY_EXCHANGE_FAILED = 3;
    public static final int SSH_DISCONNECT_MAC_ERROR = 5;
    public static final int SSH_DISCONNECT_NO_MORE_AUTH_METHODS_AVAILABLE = 14;
    public static final int SSH_DISCONNECT_PROTOCOL_ERROR = 2;
    public static final int SSH_DISCONNECT_PROTOCOL_VERSION_NOT_SUPPORTED = 8;
    public static final int SSH_DISCONNECT_RESERVED = 4;
    public static final int SSH_DISCONNECT_SERVICE_NOT_AVAILABLE = 7;
    public static final int SSH_DISCONNECT_TOO_MANY_CONNECTIONS = 12;
    public static final int SSH_EXTENDED_DATA_STDERR = 1;
    public static final int SSH_MSG_CHANNEL_CLOSE = 97;
    public static final int SSH_MSG_CHANNEL_DATA = 94;
    public static final int SSH_MSG_CHANNEL_EOF = 96;
    public static final int SSH_MSG_CHANNEL_EXTENDED_DATA = 95;
    public static final int SSH_MSG_CHANNEL_FAILURE = 100;
    public static final int SSH_MSG_CHANNEL_OPEN = 90;
    public static final int SSH_MSG_CHANNEL_OPEN_CONFIRMATION = 91;
    public static final int SSH_MSG_CHANNEL_OPEN_FAILURE = 92;
    public static final int SSH_MSG_CHANNEL_REQUEST = 98;
    public static final int SSH_MSG_CHANNEL_SUCCESS = 99;
    public static final int SSH_MSG_CHANNEL_WINDOW_ADJUST = 93;
    public static final int SSH_MSG_DEBUG = 4;
    public static final int SSH_MSG_DISCONNECT = 1;
    public static final int SSH_MSG_GLOBAL_REQUEST = 80;
    public static final int SSH_MSG_IGNORE = 2;
    public static final int SSH_MSG_KEXDH_INIT = 30;
    public static final int SSH_MSG_KEXDH_REPLY = 31;
    public static final int SSH_MSG_KEXINIT = 20;
    public static final int SSH_MSG_KEX_DH_GEX_GROUP = 31;
    public static final int SSH_MSG_KEX_DH_GEX_INIT = 32;
    public static final int SSH_MSG_KEX_DH_GEX_REPLY = 33;
    public static final int SSH_MSG_KEX_DH_GEX_REQUEST = 34;
    public static final int SSH_MSG_KEX_DH_GEX_REQUEST_OLD = 30;
    public static final int SSH_MSG_NEWKEYS = 21;
    public static final int SSH_MSG_REQUEST_FAILURE = 82;
    public static final int SSH_MSG_REQUEST_SUCCESS = 81;
    public static final int SSH_MSG_SERVICE_ACCEPT = 6;
    public static final int SSH_MSG_SERVICE_REQUEST = 5;
    public static final int SSH_MSG_UNIMPLEMENTED = 3;
    public static final int SSH_MSG_USERAUTH_BANNER = 53;
    public static final int SSH_MSG_USERAUTH_FAILURE = 51;
    public static final int SSH_MSG_USERAUTH_INFO_REQUEST = 60;
    public static final int SSH_MSG_USERAUTH_INFO_RESPONSE = 61;
    public static final int SSH_MSG_USERAUTH_REQUEST = 50;
    public static final int SSH_MSG_USERAUTH_SUCCESS = 52;
    public static final int SSH_OPEN_ADMINISTRATIVELY_PROHIBITED = 1;
    public static final int SSH_OPEN_CONNECT_FAILED = 2;
    public static final int SSH_OPEN_RESOURCE_SHORTAGE = 4;
    public static final int SSH_OPEN_UNKNOWN_CHANNEL_TYPE = 3;
    private static final String[] reverseNames;

    static {
        String[] strArr = new String[101];
        reverseNames = strArr;
        strArr[1] = new ObfuscatedString(new long[]{8992702442942882841L, -6960645049990564181L, 6953142052811004403L, 702451578941648410L}).toString();
        strArr[2] = new ObfuscatedString(new long[]{-1203153198592597302L, 2260612193928316906L, 9132669377805051731L}).toString();
        strArr[3] = new ObfuscatedString(new long[]{8793268363854141735L, -1830099259262716853L, 1253197906240676352L, -7856264702358452891L}).toString();
        strArr[4] = new ObfuscatedString(new long[]{3043678570402320199L, 1461204556633467271L, 1197579925166795502L}).toString();
        strArr[5] = new ObfuscatedString(new long[]{7249404419854845414L, 7114607651478471131L, -1774729274372642741L, 920823498224741503L}).toString();
        strArr[6] = new ObfuscatedString(new long[]{-3073544188067325611L, -2867484977448425936L, 3087114401175799786L, -7271150056023225873L}).toString();
        strArr[20] = new ObfuscatedString(new long[]{2357249798659991244L, 2125755362678894738L, -4777731805089123811L}).toString();
        strArr[21] = new ObfuscatedString(new long[]{-427273867191551811L, 8296823361393133839L, 7694942569272396817L}).toString();
        strArr[30] = new ObfuscatedString(new long[]{-9044286528790800840L, -268772528278832928L, 4466242141872473850L, -5228892837363405152L}).toString();
        strArr[31] = new ObfuscatedString(new long[]{-3110976964116071577L, -661982046761305931L, 7252854365401325477L, -6601950651827385514L, 3644570493458346691L, 2385178720742588465L, 3233602316202493923L}).toString();
        strArr[32] = new ObfuscatedString(new long[]{2082818644883561024L, 7655570378754879579L, -749509388992590434L, 5551584198287178764L}).toString();
        strArr[33] = new ObfuscatedString(new long[]{-784630407545699218L, 6419082630068757700L, 3111855479266825305L, 1150209487752778425L}).toString();
        strArr[34] = new ObfuscatedString(new long[]{6399761479572503279L, 2336333556289594226L, -8861197477225309029L, 3653044087554456296L, 7627096067425964701L}).toString();
        strArr[50] = new ObfuscatedString(new long[]{-8790588214569657495L, -7908416872715631495L, -7767342836168093952L, 2726782015394353837L}).toString();
        strArr[51] = new ObfuscatedString(new long[]{-6795769489784849317L, 7944338806706059527L, -4548508523094089750L, -2015495062078977867L}).toString();
        strArr[52] = new ObfuscatedString(new long[]{-2945342155033167215L, 8047548592558013039L, -8594953770942444434L, -6440313433488650974L}).toString();
        strArr[53] = new ObfuscatedString(new long[]{2709087132523341317L, 1972285554673981849L, 6583764858082150120L, -4060827901693357457L}).toString();
        strArr[60] = new ObfuscatedString(new long[]{-2304827523039643814L, 5358956128789949847L, 8713850175235669735L, -8546753564621733435L, 4836703246052213563L}).toString();
        strArr[61] = new ObfuscatedString(new long[]{-6285036729731352389L, -6553765931709005368L, 2729734767971560277L, 3283003730569648257L, -4299616275579164561L}).toString();
        strArr[80] = new ObfuscatedString(new long[]{-8465469854218256055L, 6851712655472415744L, 956766867079583718L, 5724095596853227201L}).toString();
        strArr[81] = new ObfuscatedString(new long[]{-5522675244882752208L, 6925342245813628697L, -6136553456960881340L, -5181970612783658627L}).toString();
        strArr[82] = new ObfuscatedString(new long[]{-2560520348544918797L, 8221327869856681586L, 262193045432061832L, 8328537273500256194L}).toString();
        strArr[90] = new ObfuscatedString(new long[]{-1881884388125379362L, -4132952623134832847L, 1706783831601435743L, 7021647056720251749L}).toString();
        strArr[91] = new ObfuscatedString(new long[]{147258231770640339L, -2765539383770562532L, -2505489804629663835L, 7902741102489672825L, 3885940696581968381L, -4854698154588525923L}).toString();
        strArr[92] = new ObfuscatedString(new long[]{-1684820935706087697L, 1477080823412091657L, 1604579034132407866L, -1219284750936757716L, -6121256180439531410L}).toString();
        strArr[93] = new ObfuscatedString(new long[]{-703670148790879937L, 6072627943301968087L, -2707659128149605900L, 2779422971031745775L, -9134562219817423887L}).toString();
        strArr[94] = new ObfuscatedString(new long[]{1780921810259237851L, 786988832631746812L, 7794776664486031809L, 1275579098799151943L}).toString();
        strArr[95] = new ObfuscatedString(new long[]{-2164866773350540471L, 4254160099366204281L, -7806611330709570995L, 5660874249483804992L, -8047955195458823538L}).toString();
        strArr[96] = new ObfuscatedString(new long[]{6930652125150163787L, 1177695674276136938L, -7359575969104853237L, 5462309085694010628L}).toString();
        strArr[97] = new ObfuscatedString(new long[]{-8547297295343440576L, 9199747069807095326L, 3623721913704830407L, -6872737331379823470L}).toString();
        strArr[98] = new ObfuscatedString(new long[]{-7945017992390258047L, -1408684797072782306L, 9018940916975417311L, -2938617689668007132L}).toString();
        strArr[99] = new ObfuscatedString(new long[]{-6495521187983328178L, 7864787616088103024L, 4482520069682737648L, 3317663159287733244L}).toString();
        strArr[100] = new ObfuscatedString(new long[]{-405880403471551229L, 1957402533497707872L, -9201410981619148826L, -5545108260504244421L}).toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getMessageName(int i) {
        String str;
        if (i >= 0) {
            String[] strArr = reverseNames;
            if (i < strArr.length) {
                str = strArr[i];
                if (str != null) {
                    return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2542206255590222848L, -9086460119420016425L, 1590280391999029935L}), new StringBuilder(), i);
                }
                return str;
            }
        }
        str = null;
        if (str != null) {
        }
    }
}
