package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1192x185baab5 extends AbstractC1190x474f456 {
    @NotNull
    public static final String prependIndent(@NotNull String str, @NotNull String indent) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(indent, "indent");
        return SequencesKt___SequencesKt.joinToString$default(SequencesKt___SequencesKt.map(StringsKt__StringsKt.lineSequence(str), new C1191x2ea41c86(indent, 0)), "\n", null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return prependIndent(str, str2);
    }

    @NotNull
    public static final String replaceIndent(@NotNull String str, @NotNull String newIndent) {
        int i;
        int i2;
        Function1 c1191x2ea41c86;
        Appendable joinTo;
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        List<String> lines = StringsKt__StringsKt.lines(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!StringsKt__StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i < length) {
                    if (!AbstractC0298xfbe0c504.isWhitespace(str3.charAt(i))) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                i = str3.length();
            }
            arrayList2.add(Integer.valueOf(i));
        }
        Integer num = (Integer) CollectionsKt___CollectionsKt.minOrNull((Iterable) arrayList2);
        if (num != null) {
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        int size = (lines.size() * newIndent.length()) + str.length();
        if (newIndent.length() == 0) {
            c1191x2ea41c86 = new C0648x4ba9bb0c(26);
        } else {
            c1191x2ea41c86 = new C1191x2ea41c86(newIndent, 1);
        }
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : lines) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str4 = (String) obj2;
            if ((i == 0 || i == lastIndex) && StringsKt__StringsKt.isBlank(str4)) {
                str4 = null;
            } else {
                String drop = StringsKt___StringsKt.drop(str4, i2);
                if (drop != null && (str2 = (String) c1191x2ea41c86.invoke(drop)) != null) {
                    str4 = str2;
                }
            }
            if (str4 != null) {
                arrayList3.add(str4);
            }
            i = i3;
        }
        joinTo = CollectionsKt___CollectionsKt.joinTo(arrayList3, new StringBuilder(size), (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        return ((StringBuilder) joinTo).toString();
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return replaceIndent(str, str2);
    }

    @NotNull
    public static final String replaceIndentByMargin(@NotNull String str, @NotNull String newIndent, @NotNull String marginPrefix) {
        Function1 c1191x2ea41c86;
        Appendable joinTo;
        int i;
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (!StringsKt__StringsKt.isBlank(marginPrefix)) {
            List<String> lines = StringsKt__StringsKt.lines(str);
            int size = (lines.size() * newIndent.length()) + str.length();
            if (newIndent.length() == 0) {
                c1191x2ea41c86 = new C0648x4ba9bb0c(26);
            } else {
                c1191x2ea41c86 = new C1191x2ea41c86(newIndent, 1);
            }
            int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (Object obj : lines) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                String str3 = (String) obj;
                String str4 = null;
                if ((i2 == 0 || i2 == lastIndex) && StringsKt__StringsKt.isBlank(str3)) {
                    str3 = null;
                } else {
                    int length = str3.length();
                    int i4 = 0;
                    while (true) {
                        if (i4 < length) {
                            if (!AbstractC0298xfbe0c504.isWhitespace(str3.charAt(i4))) {
                                i = i4;
                                break;
                            }
                            i4++;
                        } else {
                            i = -1;
                            break;
                        }
                    }
                    if (i != -1) {
                        int i5 = i;
                        if (AbstractC1197x89633db9.startsWith$default(str3, marginPrefix, i, false, 4, null)) {
                            int length2 = marginPrefix.length() + i5;
                            Intrinsics.checkNotNull(str3, "null cannot be cast to non-null type java.lang.String");
                            str4 = str3.substring(length2);
                            Intrinsics.checkNotNullExpressionValue(str4, "substring(...)");
                        }
                    }
                    if (str4 != null && (str2 = (String) c1191x2ea41c86.invoke(str4)) != null) {
                        str3 = str2;
                    }
                }
                if (str3 != null) {
                    arrayList.add(str3);
                }
                i2 = i3;
            }
            joinTo = CollectionsKt___CollectionsKt.joinTo(arrayList, new StringBuilder(size), (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
            return ((StringBuilder) joinTo).toString();
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.");
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return replaceIndentByMargin(str, str2, str3);
    }

    @IntrinsicConstEvaluation
    @NotNull
    public static String trimIndent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return replaceIndent(str, "");
    }

    @IntrinsicConstEvaluation
    @NotNull
    public static final String trimMargin(@NotNull String str, @NotNull String marginPrefix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        return replaceIndentByMargin(str, "", marginPrefix);
    }

    public static /* synthetic */ String trimMargin$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return trimMargin(str, str2);
    }
}
