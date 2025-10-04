package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0016"}, d2 = {"Lcom/v2ray/ang/dto/EConfigType;", "", "value", "", "protocolScheme", "", "<init>", "(Ljava/lang/String;IILjava/lang/String;)V", "getValue", "()I", "getProtocolScheme", "()Ljava/lang/String;", "VMESS", "CUSTOM", "SHADOWSOCKS", "SOCKS", "VLESS", "TROJAN", "WIREGUARD", "HYSTERIA2", "HTTP", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EConfigType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EConfigType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String protocolScheme;
    private final int value;
    public static final EConfigType VMESS = new EConfigType(new ObfuscatedString(new long[]{-7538564306616323608L, -8659955834935618191L}).toString(), 0, 1, new ObfuscatedString(new long[]{1065721945478378693L, 8540802002691841751L}).toString());
    public static final EConfigType CUSTOM = new EConfigType(new ObfuscatedString(new long[]{-6707197024583960872L, -8635271500940257172L}).toString(), 1, 2, new ObfuscatedString(new long[]{473197994888103008L}).toString());
    public static final EConfigType SHADOWSOCKS = new EConfigType(new ObfuscatedString(new long[]{2137615610252552047L, 5025709686105025305L, 7162330969261707613L}).toString(), 2, 3, new ObfuscatedString(new long[]{-576528637056402671L, 7324608061507300731L}).toString());
    public static final EConfigType SOCKS = new EConfigType(new ObfuscatedString(new long[]{-5967337125815810402L, 780095592518789657L}).toString(), 3, 4, new ObfuscatedString(new long[]{8376372434362161965L, 2874521156430445053L}).toString());
    public static final EConfigType VLESS = new EConfigType(new ObfuscatedString(new long[]{4574767200157463119L, -3702346453248019581L}).toString(), 4, 5, new ObfuscatedString(new long[]{-3965783054417306540L, -4823756308042609485L}).toString());
    public static final EConfigType TROJAN = new EConfigType(new ObfuscatedString(new long[]{-1130331044057604127L, 2141239286214778248L}).toString(), 5, 6, new ObfuscatedString(new long[]{-8286663076771832507L, 7278433749179976861L, -5820226456499375373L}).toString());
    public static final EConfigType WIREGUARD = new EConfigType(new ObfuscatedString(new long[]{2911909622596184448L, 7324563015086815998L, -4705037926151517966L}).toString(), 6, 7, new ObfuscatedString(new long[]{-6663631092608486069L, -6907970819065137590L, -3760451244171201745L}).toString());
    public static final EConfigType HYSTERIA2 = new EConfigType(new ObfuscatedString(new long[]{-3227570538775488615L, -7744031005859405069L, 1697742222902062001L}).toString(), 7, 9, new ObfuscatedString(new long[]{-5614675519484249359L, -8919377497107958359L, -9206705194253590362L}).toString());
    public static final EConfigType HTTP = new EConfigType(new ObfuscatedString(new long[]{8740537537214580557L, -3035073670583600416L}).toString(), 8, 10, new ObfuscatedString(new long[]{7091051747888927119L, -6224906517019647477L}).toString());

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/EConfigType$Companion;", "", "<init>", "()V", "fromInt", "Lcom/v2ray/ang/dto/EConfigType;", "value", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEConfigType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EConfigType.kt\ncom/v2ray/ang/dto/EConfigType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,23:1\n295#2,2:24\n*S KotlinDebug\n*F\n+ 1 EConfigType.kt\ncom/v2ray/ang/dto/EConfigType$Companion\n*L\n20#1:24,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final EConfigType fromInt(int value) {
            Object obj;
            Iterator<E> it = EConfigType.getEntries().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((EConfigType) obj).getValue() == value) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            return (EConfigType) obj;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ EConfigType[] $values() {
        return new EConfigType[]{VMESS, CUSTOM, SHADOWSOCKS, SOCKS, VLESS, TROJAN, WIREGUARD, HYSTERIA2, HTTP};
    }

    static {
        EConfigType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private EConfigType(String str, int i, int i2, String str2) {
        this.value = i2;
        this.protocolScheme = str2;
    }

    @NotNull
    public static EnumEntries<EConfigType> getEntries() {
        return $ENTRIES;
    }

    public static EConfigType valueOf(String str) {
        return (EConfigType) Enum.valueOf(EConfigType.class, str);
    }

    public static EConfigType[] values() {
        return (EConfigType[]) $VALUES.clone();
    }

    @NotNull
    public final String getProtocolScheme() {
        return this.protocolScheme;
    }

    public final int getValue() {
        return this.value;
    }
}
