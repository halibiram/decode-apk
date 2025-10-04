package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0013"}, d2 = {"Lcom/v2ray/ang/dto/Language;", "", "code", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getCode", "()Ljava/lang/String;", "AUTO", "ENGLISH", "CHINA", "TRADITIONAL_CHINESE", "VIETNAMESE", "RUSSIAN", "PERSIAN", "ARABIC", "BANGLA", "BAKHTIARI", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Language {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Language[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String code;
    public static final Language AUTO = new Language(new ObfuscatedString(new long[]{1956463903465739148L, 7710519830864945413L}).toString(), 0, new ObfuscatedString(new long[]{1275642568518756974L, -2919674826036062711L}).toString());
    public static final Language ENGLISH = new Language(new ObfuscatedString(new long[]{-3412944611722197307L, 2694433628579203174L}).toString(), 1, new ObfuscatedString(new long[]{1835676889618939164L, 504439843849802384L}).toString());
    public static final Language CHINA = new Language(new ObfuscatedString(new long[]{-1795409462318022693L, 8210297116854459956L}).toString(), 2, new ObfuscatedString(new long[]{-3322569403730880020L, 1994388299635890237L}).toString());
    public static final Language TRADITIONAL_CHINESE = new Language(new ObfuscatedString(new long[]{-7513948573532211464L, 7621138994741240304L, -7428494479348447066L, -6309663672328316215L}).toString(), 3, new ObfuscatedString(new long[]{5099991137418350228L, -3623866510702404789L}).toString());
    public static final Language VIETNAMESE = new Language(new ObfuscatedString(new long[]{2258081344887484681L, 2567565131318777851L, -3089811839338522985L}).toString(), 4, new ObfuscatedString(new long[]{-1838215726478798730L, -5581854188602310192L}).toString());
    public static final Language RUSSIAN = new Language(new ObfuscatedString(new long[]{2960472454720311428L, 7183525461321817033L}).toString(), 5, new ObfuscatedString(new long[]{-3590644435220305415L, -4972154196722429725L}).toString());
    public static final Language PERSIAN = new Language(new ObfuscatedString(new long[]{237513089041145419L, -5055511099356074871L}).toString(), 6, new ObfuscatedString(new long[]{-7384599532528689520L, -9109911981398503921L}).toString());
    public static final Language ARABIC = new Language(new ObfuscatedString(new long[]{7823044446852372290L, 1282277004488617993L}).toString(), 7, new ObfuscatedString(new long[]{7900009871494819725L, -1118962247163934169L}).toString());
    public static final Language BANGLA = new Language(new ObfuscatedString(new long[]{-1014873326878447503L, -9187915603092016491L}).toString(), 8, new ObfuscatedString(new long[]{4484170003798618054L, -5067038369844628996L}).toString());
    public static final Language BAKHTIARI = new Language(new ObfuscatedString(new long[]{-3026884255088472352L, 4937101193168031574L, 2742190194454751043L}).toString(), 9, new ObfuscatedString(new long[]{-3887848851410634566L, 8998362136027793241L}).toString());

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/Language$Companion;", "", "<init>", "()V", "fromCode", "Lcom/v2ray/ang/dto/Language;", "code", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nLanguage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Language.kt\ncom/v2ray/ang/dto/Language$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Language fromCode(@NotNull String code) {
            Object obj;
            Intrinsics.checkNotNullParameter(code, new ObfuscatedString(new long[]{3802560781794688672L, -2140269099347263083L}).toString());
            Iterator<E> it = Language.getEntries().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((Language) obj).getCode(), code)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            Language language = (Language) obj;
            if (language == null) {
                return Language.AUTO;
            }
            return language;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ Language[] $values() {
        return new Language[]{AUTO, ENGLISH, CHINA, TRADITIONAL_CHINESE, VIETNAMESE, RUSSIAN, PERSIAN, ARABIC, BANGLA, BAKHTIARI};
    }

    static {
        Language[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private Language(String str, int i, String str2) {
        this.code = str2;
    }

    @NotNull
    public static EnumEntries<Language> getEntries() {
        return $ENTRIES;
    }

    public static Language valueOf(String str) {
        return (Language) Enum.valueOf(Language.class, str);
    }

    public static Language[] values() {
        return (Language[]) $VALUES.clone();
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }
}
