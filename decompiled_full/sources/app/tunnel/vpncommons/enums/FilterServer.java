package app.tunnel.vpncommons.enums;

import androidx.annotation.NonNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class FilterServer {
    public static final FilterServer Hysteria;
    public static final FilterServer OpenVPN;
    public static final FilterServer SSH;
    public static final FilterServer SlowDNS;
    public static final FilterServer V2Ray;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ FilterServer[] f415xfbe0c504;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterServer] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterServer] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterServer] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterServer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.FilterServer] */
    static {
        ?? r5 = new Enum("SSH", 0);
        SSH = r5;
        ?? r6 = new Enum("OpenVPN", 1);
        OpenVPN = r6;
        ?? r7 = new Enum("Hysteria", 2);
        Hysteria = r7;
        ?? r8 = new Enum("V2Ray", 3);
        V2Ray = r8;
        ?? r9 = new Enum("SlowDNS", 4);
        SlowDNS = r9;
        f415xfbe0c504 = new FilterServer[]{r5, r6, r7, r8, r9};
    }

    public static FilterServer fromString(String str) {
        for (FilterServer filterServer : values()) {
            if (filterServer.toString().equals(str.toLowerCase())) {
                return filterServer;
            }
        }
        return null;
    }

    public static FilterServer valueOf(String str) {
        return (FilterServer) Enum.valueOf(FilterServer.class, str);
    }

    public static FilterServer[] values() {
        return (FilterServer[]) f415xfbe0c504.clone();
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return name().toLowerCase();
    }
}
