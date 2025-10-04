package app.tunnel.vpncommons.enums;

import androidx.annotation.NonNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class VpnType {
    public static final VpnType Dnstt;
    public static final VpnType Hysteria;
    public static final VpnType OpenVPN;
    public static final VpnType PSIPHON;
    public static final VpnType SSH;
    public static final VpnType UDPCUSTOM;
    public static final VpnType V2Ray;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ VpnType[] f416xfbe0c504;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, app.tunnel.vpncommons.enums.VpnType] */
    static {
        ?? r7 = new Enum("Hysteria", 0);
        Hysteria = r7;
        ?? r8 = new Enum("OpenVPN", 1);
        OpenVPN = r8;
        ?? r9 = new Enum("Dnstt", 2);
        Dnstt = r9;
        ?? r10 = new Enum("SSH", 3);
        SSH = r10;
        ?? r11 = new Enum("PSIPHON", 4);
        PSIPHON = r11;
        ?? r12 = new Enum("UDPCUSTOM", 5);
        UDPCUSTOM = r12;
        ?? r13 = new Enum("V2Ray", 6);
        V2Ray = r13;
        f416xfbe0c504 = new VpnType[]{r7, r8, r9, r10, r11, r12, r13};
    }

    public static VpnType fromString(String str) {
        try {
            return valueOf(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static VpnType valueOf(String str) {
        return (VpnType) Enum.valueOf(VpnType.class, str);
    }

    public static VpnType[] values() {
        return (VpnType[]) f416xfbe0c504.clone();
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return name();
    }
}
