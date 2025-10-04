package app.tunnel.vpncommons.enums;

import androidx.annotation.NonNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class FilterNetwork {
    public static final FilterNetwork Hysteria;
    public static final FilterNetwork Hysteria_OpenVPN;
    public static final FilterNetwork OpenVPN_TCP;
    public static final FilterNetwork OpenVPN_UDP;
    public static final FilterNetwork SSH;
    public static final FilterNetwork SlowDNS;
    public static final FilterNetwork UDP;
    public static final FilterNetwork USE_PAYLOAD;
    public static final FilterNetwork USE_PROXY;
    public static final FilterNetwork USE_SNI;
    public static final FilterNetwork V2Ray;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ FilterNetwork[] f414xfbe0c504;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterNetwork] */
    static {
        ?? r11 = new Enum("SSH", 0);
        SSH = r11;
        ?? r12 = new Enum("OpenVPN_TCP", 1);
        OpenVPN_TCP = r12;
        ?? r13 = new Enum("OpenVPN_UDP", 2);
        OpenVPN_UDP = r13;
        ?? r14 = new Enum("UDP", 3);
        UDP = r14;
        ?? r15 = new Enum("Hysteria", 4);
        Hysteria = r15;
        ?? r7 = new Enum("Hysteria_OpenVPN", 5);
        Hysteria_OpenVPN = r7;
        ?? r6 = new Enum("V2Ray", 6);
        V2Ray = r6;
        ?? r5 = new Enum("USE_PAYLOAD", 7);
        USE_PAYLOAD = r5;
        ?? r4 = new Enum("USE_SNI", 8);
        USE_SNI = r4;
        ?? r3 = new Enum("SlowDNS", 9);
        SlowDNS = r3;
        ?? r2 = new Enum("USE_PROXY", 10);
        USE_PROXY = r2;
        f414xfbe0c504 = new FilterNetwork[]{r11, r12, r13, r14, r15, r7, r6, r5, r4, r3, r2};
    }

    public static FilterNetwork fromString(String str) {
        for (FilterNetwork filterNetwork : values()) {
            if (filterNetwork.toString().equals(str.toLowerCase())) {
                return filterNetwork;
            }
        }
        return null;
    }

    public static FilterNetwork valueOf(String str) {
        return (FilterNetwork) Enum.valueOf(FilterNetwork.class, str);
    }

    public static FilterNetwork[] values() {
        return (FilterNetwork[]) f414xfbe0c504.clone();
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return name().toLowerCase();
    }
}
