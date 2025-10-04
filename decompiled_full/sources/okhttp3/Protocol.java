package okhttp3;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1197x89633db9;
import java.io.IOException;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lokhttp3/Protocol;", "", "", "toString", "()Ljava/lang/String;", "Companion", "HTTP_1_0", "HTTP_1_1", "SPDY_3", "HTTP_2", "H2_PRIOR_KNOWLEDGE", "QUIC", "HTTP_3", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Protocol {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final Protocol H2_PRIOR_KNOWLEDGE;
    public static final Protocol HTTP_1_0;
    public static final Protocol HTTP_1_1;
    public static final Protocol HTTP_2;
    public static final Protocol HTTP_3;
    public static final Protocol QUIC;

    @Deprecated(message = "OkHttp has dropped support for SPDY. Prefer {@link #HTTP_2}.")
    public static final Protocol SPDY_3;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ Protocol[] f2924x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f2925x1378447b;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final String f2926xfbe0c504;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Protocol$Companion;", "", "", "protocol", "Lokhttp3/Protocol;", "get", "(Ljava/lang/String;)Lokhttp3/Protocol;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @JvmStatic
        @NotNull
        public final Protocol get(@NotNull String protocol) {
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Protocol protocol2 = Protocol.HTTP_1_0;
            if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                protocol2 = Protocol.HTTP_1_1;
                if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                    protocol2 = Protocol.H2_PRIOR_KNOWLEDGE;
                    if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                        protocol2 = Protocol.HTTP_2;
                        if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                            protocol2 = Protocol.SPDY_3;
                            if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                                protocol2 = Protocol.QUIC;
                                if (!Intrinsics.areEqual(protocol, protocol2.f2926xfbe0c504)) {
                                    protocol2 = Protocol.HTTP_3;
                                    if (!AbstractC1197x89633db9.startsWith$default(protocol, protocol2.f2926xfbe0c504, false, 2, null)) {
                                        throw new IOException(AbstractC0362x4440ab85.m2952x5ac5058d("Unexpected protocol: ", protocol));
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return protocol2;
        }
    }

    static {
        Protocol protocol = new Protocol("HTTP_1_0", 0, "http/1.0");
        HTTP_1_0 = protocol;
        Protocol protocol2 = new Protocol("HTTP_1_1", 1, "http/1.1");
        HTTP_1_1 = protocol2;
        Protocol protocol3 = new Protocol("SPDY_3", 2, "spdy/3.1");
        SPDY_3 = protocol3;
        Protocol protocol4 = new Protocol("HTTP_2", 3, "h2");
        HTTP_2 = protocol4;
        Protocol protocol5 = new Protocol("H2_PRIOR_KNOWLEDGE", 4, "h2_prior_knowledge");
        H2_PRIOR_KNOWLEDGE = protocol5;
        Protocol protocol6 = new Protocol("QUIC", 5, "quic");
        QUIC = protocol6;
        Protocol protocol7 = new Protocol("HTTP_3", 6, "h3");
        HTTP_3 = protocol7;
        Protocol[] protocolArr = {protocol, protocol2, protocol3, protocol4, protocol5, protocol6, protocol7};
        f2924x3271d0aa = protocolArr;
        f2925x1378447b = EnumEntriesKt.enumEntries(protocolArr);
        INSTANCE = new Companion(null);
    }

    public Protocol(String str, int i, String str2) {
        this.f2926xfbe0c504 = str2;
    }

    @JvmStatic
    @NotNull
    public static final Protocol get(@NotNull String str) {
        return INSTANCE.get(str);
    }

    @NotNull
    public static EnumEntries<Protocol> getEntries() {
        return f2925x1378447b;
    }

    public static Protocol valueOf(String str) {
        return (Protocol) Enum.valueOf(Protocol.class, str);
    }

    public static Protocol[] values() {
        return (Protocol[]) f2924x3271d0aa.clone();
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.f2926xfbe0c504;
    }
}
