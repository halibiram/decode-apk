package kotlin.text;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.C0712xc64c525d;
import defpackage.C1080xc7dcd8af;
import defpackage.C1081xe23f7981;
import defpackage.C1082x2efbed11;
import j$.util.DesugarCollections;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\r\u0018\u0000 :2\u00060\u0001j\u0002`\u0002:\u0002;:B\u0011\b\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fB\u001f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0086\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0017J!\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b!\u0010\"J!\u0010$\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0019H\u0007¢\u0006\u0004\b$\u0010\u001dJ\u001f\u0010%\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0019H\u0007¢\u0006\u0004\b%\u0010&J\u001d\u0010(\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0007¢\u0006\u0004\b(\u0010)J)\u0010(\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00130*¢\u0006\u0004\b(\u0010,J\u001d\u0010-\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0007¢\u0006\u0004\b-\u0010)J%\u00100\u001a\b\u0012\u0004\u0012\u00020\u00070/2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010.\u001a\u00020\u0019¢\u0006\u0004\b0\u00101J'\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010.\u001a\u00020\u0019H\u0007¢\u0006\u0004\b2\u0010 J\u000f\u00103\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u0003¢\u0006\u0004\b5\u00106R\u0011\u0010\b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b7\u00104R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r8F¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006<"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/regex/Pattern;", "nativePattern", "<init>", "(Ljava/util/regex/Pattern;)V", "", "pattern", "(Ljava/lang/String;)V", "Lkotlin/text/RegexOption;", "option", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "", "options", "(Ljava/lang/String;Ljava/util/Set;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "input", "", "matches", "(Ljava/lang/CharSequence;)Z", "containsMatchIn", "", "startIndex", "Lkotlin/text/MatchResult;", "find", "(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;", "Lkotlin/sequences/Sequence;", "findAll", "(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;", "matchEntire", "(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;", "index", "matchAt", "matchesAt", "(Ljava/lang/CharSequence;I)Z", "replacement", "replace", "(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;", "Lkotlin/Function1;", "transform", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "replaceFirst", "limit", "", "split", "(Ljava/lang/CharSequence;I)Ljava/util/List;", "splitToSequence", "toString", "()Ljava/lang/String;", "toPattern", "()Ljava/util/regex/Pattern;", "getPattern", "getOptions", "()Ljava/util/Set;", "Companion", "땄들뎰딨둔땅딄됨둔딅땅땤뒋됫둣뒝둥돴뒨딝땧딽딃뒵뒵땋돤땟딝땳뒝되되땦땫땧둑들땡뒬땄돛뒘둬뎹든뒾듔뎰딃딌둠딜뎨딠딜들돨땝땮뒉땻뒼딸뒼딟듸땄딃땮뒘뎽땻땩도듔돼뎹땭뎹땔듰딐딁듽땮뒻딃땹듔땥땀땣뒻딃땮딁땳딁듽든듽뒐돰됩됴두딹뒋딜뎹돛둣땃땃땳땹될듨딹딽땔땳땍될둔딄땜듐딜", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n22#2,3:402\n1#3:405\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n103#1:402,3\n*E\n"})
/* loaded from: classes3.dex */
public final class Regex implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Pattern f1678xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Set f1679x3271d0aa;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/text/Regex$Companion;", "", "", "literal", "Lkotlin/text/Regex;", "fromLiteral", "(Ljava/lang/String;)Lkotlin/text/Regex;", "escape", "(Ljava/lang/String;)Ljava/lang/String;", "escapeReplacement", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final int access$ensureUnicodeCase(Companion companion, int i) {
            companion.getClass();
            if ((i & 2) != 0) {
                return i | 64;
            }
            return i;
        }

        @NotNull
        public final String escape(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            String quote = Pattern.quote(literal);
            Intrinsics.checkNotNullExpressionValue(quote, "quote(...)");
            return quote;
        }

        @NotNull
        public final String escapeReplacement(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            String quoteReplacement = Matcher.quoteReplacement(literal);
            Intrinsics.checkNotNullExpressionValue(quoteReplacement, "quoteReplacement(...)");
            return quoteReplacement;
        }

        @NotNull
        public final Regex fromLiteral(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            return new Regex(literal, RegexOption.LITERAL);
        }
    }

    @PublishedApi
    public Regex(@NotNull Pattern nativePattern) {
        Intrinsics.checkNotNullParameter(nativePattern, "nativePattern");
        this.f1678xfbe0c504 = nativePattern;
    }

    public static /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    public static /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    public static /* synthetic */ Sequence splitToSequence$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.splitToSequence(charSequence, i);
    }

    private final Object writeReplace() {
        Pattern pattern = this.f1678xfbe0c504;
        String pattern2 = pattern.pattern();
        Intrinsics.checkNotNullExpressionValue(pattern2, "pattern(...)");
        return new C1080xc7dcd8af(pattern2, pattern.flags());
    }

    public final boolean containsMatchIn(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.f1678xfbe0c504.matcher(input).find();
    }

    @Nullable
    public final MatchResult find(@NotNull CharSequence input, int startIndex) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.f1678xfbe0c504.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return RegexKt.access$findNext(matcher, startIndex, input);
    }

    @NotNull
    public final Sequence<MatchResult> findAll(@NotNull CharSequence input, int startIndex) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (startIndex >= 0 && startIndex <= input.length()) {
            return SequencesKt__SequencesKt.generateSequence((Function0) new C0712xc64c525d(this, input, startIndex), (Function1) C1081xe23f7981.f5371xfbe0c504);
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(startIndex, "Start index out of bounds: ", ", input length: ");
        m2939xab142723.append(input.length());
        throw new IndexOutOfBoundsException(m2939xab142723.toString());
    }

    @NotNull
    public final Set<RegexOption> getOptions() {
        Set<RegexOption> set = this.f1679x3271d0aa;
        if (set == null) {
            final int flags = this.f1678xfbe0c504.flags();
            EnumSet allOf = EnumSet.allOf(RegexOption.class);
            Intrinsics.checkNotNull(allOf);
            AbstractC0590xf7db57e6.retainAll(allOf, new Function1<RegexOption, Boolean>() { // from class: kotlin.text.Regex$special$$inlined$fromInt$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(RegexOption regexOption) {
                    RegexOption regexOption2 = regexOption;
                    return Boolean.valueOf((regexOption2.getMask() & flags) == regexOption2.getValue());
                }
            });
            Set<RegexOption> unmodifiableSet = DesugarCollections.unmodifiableSet(allOf);
            Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(...)");
            this.f1679x3271d0aa = unmodifiableSet;
            return unmodifiableSet;
        }
        return set;
    }

    @NotNull
    public final String getPattern() {
        String pattern = this.f1678xfbe0c504.pattern();
        Intrinsics.checkNotNullExpressionValue(pattern, "pattern(...)");
        return pattern;
    }

    @SinceKotlin(version = "1.7")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public final MatchResult matchAt(@NotNull CharSequence input, int index) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher region = this.f1678xfbe0c504.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length());
        if (region.lookingAt()) {
            Intrinsics.checkNotNull(region);
            return new C0299x3271d0aa(region, input);
        }
        return null;
    }

    @Nullable
    public final MatchResult matchEntire(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.f1678xfbe0c504.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return RegexKt.access$matchEntire(matcher, input);
    }

    public final boolean matches(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.f1678xfbe0c504.matcher(input).matches();
    }

    @SinceKotlin(version = "1.7")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public final boolean matchesAt(@NotNull CharSequence input, int index) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.f1678xfbe0c504.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length()).lookingAt();
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceAll = this.f1678xfbe0c504.matcher(input).replaceAll(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    @NotNull
    public final String replaceFirst(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceFirst = this.f1678xfbe0c504.matcher(input).replaceFirst(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceFirst, "replaceFirst(...)");
        return replaceFirst;
    }

    @NotNull
    public final List<String> split(@NotNull CharSequence input, int limit) {
        Intrinsics.checkNotNullParameter(input, "input");
        StringsKt__StringsKt.requireNonNegativeLimit(limit);
        Matcher matcher = this.f1678xfbe0c504.matcher(input);
        if (limit != 1 && matcher.find()) {
            int i = 10;
            if (limit > 0) {
                i = AbstractC0296x1378447b.coerceAtMost(limit, 10);
            }
            ArrayList arrayList = new ArrayList(i);
            int i2 = limit - 1;
            int i3 = 0;
            do {
                arrayList.add(input.subSequence(i3, matcher.start()).toString());
                i3 = matcher.end();
                if (i2 >= 0 && arrayList.size() == i2) {
                    break;
                }
            } while (matcher.find());
            arrayList.add(input.subSequence(i3, input.length()).toString());
            return arrayList;
        }
        return AbstractC0586x968d4673.listOf(input.toString());
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public final Sequence<String> splitToSequence(@NotNull CharSequence input, int limit) {
        Intrinsics.checkNotNullParameter(input, "input");
        StringsKt__StringsKt.requireNonNegativeLimit(limit);
        return SequencesKt__SequenceBuilderKt.sequence(new C1082x2efbed11(this, input, limit, null));
    }

    @NotNull
    /* renamed from: toPattern, reason: from getter */
    public final Pattern getF1678xfbe0c504() {
        return this.f1678xfbe0c504;
    }

    @NotNull
    public String toString() {
        String pattern = this.f1678xfbe0c504.toString();
        Intrinsics.checkNotNullExpressionValue(pattern, "toString(...)");
        return pattern;
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull Function1<? super MatchResult, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int i = 0;
        MatchResult find$default = find$default(this, input, 0, 2, null);
        if (find$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append(input, i, find$default.getRange().getStart().intValue());
            sb.append(transform.invoke(find$default));
            i = find$default.getRange().getEndInclusive().intValue() + 1;
            find$default = find$default.next();
            if (i >= length) {
                break;
            }
        } while (find$default != null);
        if (i < length) {
            sb.append(input, i, length);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Regex(@NotNull String pattern) {
        this(r2);
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Pattern compile = Pattern.compile(pattern);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Regex(@NotNull String pattern, @NotNull RegexOption option) {
        this(r2);
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(option, "option");
        Pattern compile = Pattern.compile(pattern, Companion.access$ensureUnicodeCase(INSTANCE, option.getValue()));
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Regex(@NotNull String pattern, @NotNull Set<? extends RegexOption> options) {
        this(r2);
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        Intrinsics.checkNotNullParameter(options, "options");
        Pattern compile = Pattern.compile(pattern, Companion.access$ensureUnicodeCase(INSTANCE, RegexKt.access$toInt(options)));
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
    }
}
