package kotlin.internal.jdk8;

import defpackage.AbstractC0896x30ac24ec;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.internal.jdk7.JDK7PlatformImplementations;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.jdk8.PlatformThreadLocalRandom;
import kotlin.ranges.IntRange;
import kotlin.text.MatchGroup;
import kotlin.time.Clock;
import kotlin.time.ExperimentalTime;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lkotlin/internal/jdk8/JDK8PlatformImplementations;", "Lkotlin/internal/jdk7/JDK7PlatformImplementations;", "<init>", "()V", "Ljava/util/regex/MatchResult;", "matchResult", "", "name", "Lkotlin/text/MatchGroup;", "getMatchResultNamedGroup", "(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lkotlin/text/MatchGroup;", "Lkotlin/random/Random;", "defaultPlatformRandom", "()Lkotlin/random/Random;", "Lkotlin/time/Clock;", "getSystemClock", "()Lkotlin/time/Clock;", "딁됨뒙돵땧둣땨땯돨돼땃득디땻딠딻딐뒵땄돛뎠땦땵돳돛땩땥딀둡땬땅됩둔뒼땝뒬뎬돰딸뒐땥둠뎹땍뒼딀딁드되딁땄뒝듼듸됐뒀땁딻뒹땄뒨땝둔돼땰뎬땋딸듬듨돼뎻두듨땤돵될땲딤뎨딅될땲둑뒷들땁딞둥땣땁딜땲듬된땧됨딜땬뒐뒬땅땟듻돳디딎돵된듻땋뒛돠된듨뎻뒨땬뒼뒋뎹땦땵뒝땦땥돨뒵딸땹", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class JDK8PlatformImplementations extends JDK7PlatformImplementations {
    @Override // kotlin.internal.PlatformImplementations
    @NotNull
    public Random defaultPlatformRandom() {
        Integer num = AbstractC0896x30ac24ec.f5020xfbe0c504;
        if (num != null && num.intValue() < 34) {
            return super.defaultPlatformRandom();
        }
        return new PlatformThreadLocalRandom();
    }

    @Override // kotlin.internal.PlatformImplementations
    @Nullable
    public MatchGroup getMatchResultNamedGroup(@NotNull MatchResult matchResult, @NotNull String name) {
        Matcher matcher;
        int start;
        int end;
        String group;
        Intrinsics.checkNotNullParameter(matchResult, "matchResult");
        Intrinsics.checkNotNullParameter(name, "name");
        if (matchResult instanceof Matcher) {
            matcher = (Matcher) matchResult;
        } else {
            matcher = null;
        }
        if (matcher != null) {
            start = matcher.start(name);
            end = matcher.end(name);
            IntRange intRange = new IntRange(start, end - 1);
            if (intRange.getStart().intValue() >= 0) {
                group = matcher.group(name);
                Intrinsics.checkNotNullExpressionValue(group, "group(...)");
                return new MatchGroup(group, intRange);
            }
            return null;
        }
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kotlin.time.Clock] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, kotlin.time.Clock] */
    @Override // kotlin.internal.PlatformImplementations
    @ExperimentalTime
    @NotNull
    public Clock getSystemClock() {
        Integer num = AbstractC0896x30ac24ec.f5020xfbe0c504;
        if (num != null && num.intValue() < 26) {
            return new Object();
        }
        return new Object();
    }
}
