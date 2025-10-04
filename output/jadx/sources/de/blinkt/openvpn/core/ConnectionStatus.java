package de.blinkt.openvpn.core;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0636x205c8375;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ConnectionStatus implements Parcelable {
    public static final ConnectionStatus CONNECTED;
    public static final ConnectionStatus CONNECTING;
    public static final ConnectionStatus CONNECTING_SERVER;
    public static final Parcelable.Creator<ConnectionStatus> CREATOR;
    public static final ConnectionStatus LEVEL_AUTH_FAILED;
    public static final ConnectionStatus LEVEL_NONETWORK;
    public static final ConnectionStatus LEVEL_NOTCONNECTED;
    public static final ConnectionStatus LEVEL_START;
    public static final ConnectionStatus LEVEL_WAITING_FOR_USER_INPUT;
    public static final ConnectionStatus UNKNOWN_LEVEL;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ ConnectionStatus[] f1012xfbe0c504;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Enum, de.blinkt.openvpn.core.ConnectionStatus] */
    static {
        ?? r9 = new Enum("CONNECTED", 0);
        CONNECTED = r9;
        ?? r10 = new Enum("CONNECTING_SERVER", 1);
        CONNECTING_SERVER = r10;
        ?? r11 = new Enum("CONNECTING", 2);
        CONNECTING = r11;
        ?? r12 = new Enum("LEVEL_NONETWORK", 3);
        LEVEL_NONETWORK = r12;
        ?? r13 = new Enum("LEVEL_NOTCONNECTED", 4);
        LEVEL_NOTCONNECTED = r13;
        ?? r14 = new Enum("LEVEL_START", 5);
        LEVEL_START = r14;
        ?? r15 = new Enum("LEVEL_AUTH_FAILED", 6);
        LEVEL_AUTH_FAILED = r15;
        ?? r3 = new Enum("LEVEL_WAITING_FOR_USER_INPUT", 7);
        LEVEL_WAITING_FOR_USER_INPUT = r3;
        ?? r2 = new Enum("UNKNOWN_LEVEL", 8);
        UNKNOWN_LEVEL = r2;
        f1012xfbe0c504 = new ConnectionStatus[]{r9, r10, r11, r12, r13, r14, r15, r3, r2};
        CREATOR = new C0636x205c8375(0);
    }

    public static ConnectionStatus valueOf(String str) {
        return (ConnectionStatus) Enum.valueOf(ConnectionStatus.class, str);
    }

    public static ConnectionStatus[] values() {
        return (ConnectionStatus[]) f1012xfbe0c504.clone();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
