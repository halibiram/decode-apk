package com.v2ray.ang.dto;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/dto/NetworkType;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "TCP", "KCP", "WS", "HTTP_UPGRADE", "XHTTP", "HTTP", "H2", "GRPC", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworkType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String type;
    public static final NetworkType TCP = new NetworkType(new ObfuscatedString(new long[]{-746981854522594916L, -6560991046647437790L}).toString(), 0, new ObfuscatedString(new long[]{-5834769844905671369L, -6217418342498265540L}).toString());
    public static final NetworkType KCP = new NetworkType(new ObfuscatedString(new long[]{2392209737680555290L, -7271673203956954568L}).toString(), 1, new ObfuscatedString(new long[]{1410258161103886846L, 1804023752725309654L}).toString());
    public static final NetworkType WS = new NetworkType(new ObfuscatedString(new long[]{-9198288956282734814L, -8972540000448270609L}).toString(), 2, new ObfuscatedString(new long[]{2819095875794511362L, 3242707751768082586L}).toString());
    public static final NetworkType HTTP_UPGRADE = new NetworkType(new ObfuscatedString(new long[]{-2993707008754689625L, 5979097708285779898L, -7827190834728633345L}).toString(), 3, new ObfuscatedString(new long[]{8684036166563863655L, 8393327324410548731L, -2570482052688574549L}).toString());
    public static final NetworkType XHTTP = new NetworkType(new ObfuscatedString(new long[]{2519215702643880907L, 2228080113509327473L}).toString(), 4, new ObfuscatedString(new long[]{3549858156163204041L, -920952567566902628L}).toString());
    public static final NetworkType HTTP = new NetworkType(new ObfuscatedString(new long[]{-6864080491032669005L, -2563627183998202271L}).toString(), 5, new ObfuscatedString(new long[]{-237651305110364359L, 1889675212763353890L}).toString());
    public static final NetworkType H2 = new NetworkType(new ObfuscatedString(new long[]{-5554353538958459737L, -7434840652473184177L}).toString(), 6, new ObfuscatedString(new long[]{-293083371549577895L, -757388198121707186L}).toString());
    public static final NetworkType GRPC = new NetworkType(new ObfuscatedString(new long[]{5121036390447087677L, 925011558478207331L}).toString(), 7, new ObfuscatedString(new long[]{-8148696874125118737L, 2329199586243863423L}).toString());

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/NetworkType$Companion;", "", "<init>", "()V", "fromString", "Lcom/v2ray/ang/dto/NetworkType;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nNetworkType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkType.kt\ncom/v2ray/ang/dto/NetworkType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NetworkType fromString(@Nullable String type) {
            Object obj;
            Iterator<E> it = NetworkType.getEntries().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((NetworkType) obj).getType(), type)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            NetworkType networkType = (NetworkType) obj;
            if (networkType == null) {
                return NetworkType.TCP;
            }
            return networkType;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ NetworkType[] $values() {
        return new NetworkType[]{TCP, KCP, WS, HTTP_UPGRADE, XHTTP, HTTP, H2, GRPC};
    }

    static {
        NetworkType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private NetworkType(String str, int i, String str2) {
        this.type = str2;
    }

    @NotNull
    public static EnumEntries<NetworkType> getEntries() {
        return $ENTRIES;
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) $VALUES.clone();
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
