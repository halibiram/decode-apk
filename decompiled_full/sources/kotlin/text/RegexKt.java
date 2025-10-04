package kotlin.text;

import defpackage.InterfaceC0746x860f30ac;
import java.util.Iterator;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1803#2,3:402\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n*L\n19#1:402,3\n*E\n"})
/* loaded from: classes3.dex */
public final class RegexKt {
    public static final MatchResult access$findNext(Matcher matcher, int i, CharSequence charSequence) {
        if (!matcher.find(i)) {
            return null;
        }
        return new C0299x3271d0aa(matcher, charSequence);
    }

    public static final MatchResult access$matchEntire(Matcher matcher, CharSequence charSequence) {
        if (!matcher.matches()) {
            return null;
        }
        return new C0299x3271d0aa(matcher, charSequence);
    }

    public static final int access$toInt(Iterable iterable) {
        Iterator it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((InterfaceC0746x860f30ac) it.next()).getValue();
        }
        return i;
    }
}
