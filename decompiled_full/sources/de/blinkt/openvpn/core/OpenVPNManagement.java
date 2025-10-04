package de.blinkt.openvpn.core;

/* loaded from: classes3.dex */
public interface OpenVPNManagement {
    public static final int mBytecountInterval = 2;

    /* loaded from: classes3.dex */
    public interface PausedStateCallback {
        boolean shouldBeRunning();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class SignaturePadding {
        public static final SignaturePadding NO_PADDING;
        public static final SignaturePadding RSA_PKCS1_PADDING;
        public static final SignaturePadding RSA_PKCS1_PSS_PADDING;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ SignaturePadding[] f1019xfbe0c504;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$SignaturePadding] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$SignaturePadding] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$SignaturePadding] */
        static {
            ?? r3 = new Enum("RSA_PKCS1_PSS_PADDING", 0);
            RSA_PKCS1_PSS_PADDING = r3;
            ?? r4 = new Enum("RSA_PKCS1_PADDING", 1);
            RSA_PKCS1_PADDING = r4;
            ?? r5 = new Enum("NO_PADDING", 2);
            NO_PADDING = r5;
            f1019xfbe0c504 = new SignaturePadding[]{r3, r4, r5};
        }

        public static SignaturePadding valueOf(String str) {
            return (SignaturePadding) Enum.valueOf(SignaturePadding.class, str);
        }

        public static SignaturePadding[] values() {
            return (SignaturePadding[]) f1019xfbe0c504.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class pauseReason {
        public static final pauseReason noNetwork;
        public static final pauseReason screenOff;
        public static final pauseReason userPause;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ pauseReason[] f1020xfbe0c504;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$pauseReason] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$pauseReason] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, de.blinkt.openvpn.core.OpenVPNManagement$pauseReason] */
        static {
            ?? r3 = new Enum("noNetwork", 0);
            noNetwork = r3;
            ?? r4 = new Enum("userPause", 1);
            userPause = r4;
            ?? r5 = new Enum("screenOff", 2);
            screenOff = r5;
            f1020xfbe0c504 = new pauseReason[]{r3, r4, r5};
        }

        public static pauseReason valueOf(String str) {
            return (pauseReason) Enum.valueOf(pauseReason.class, str);
        }

        public static pauseReason[] values() {
            return (pauseReason[]) f1020xfbe0c504.clone();
        }
    }

    void networkChange(boolean z);

    void pause(pauseReason pausereason);

    void reconnect();

    void resume();

    void sendCRResponse(String str);

    void setPauseCallback(PausedStateCallback pausedStateCallback);

    boolean stopVPN(boolean z);
}
