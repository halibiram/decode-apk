package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.IntRange;
import kotlin.text.MatchResult;

/* renamed from: kotlin.text.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0299x3271d0aa implements MatchResult {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Matcher f1693xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CharSequence f1694x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final MatcherMatchResult$groups$1 f1695x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public MatcherMatchResult$groupValues$1 f1696x75d576dc;

    public C0299x3271d0aa(Matcher matcher, CharSequence input) {
        Intrinsics.checkNotNullParameter(matcher, "matcher");
        Intrinsics.checkNotNullParameter(input, "input");
        this.f1693xfbe0c504 = matcher;
        this.f1694x3271d0aa = input;
        this.f1695x1378447b = new MatcherMatchResult$groups$1(this);
    }

    @Override // kotlin.text.MatchResult
    public final MatchResult.Destructured getDestructured() {
        return MatchResult.DefaultImpls.getDestructured(this);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.text.MatcherMatchResult$groupValues$1] */
    @Override // kotlin.text.MatchResult
    public final List getGroupValues() {
        if (this.f1696x75d576dc == null) {
            this.f1696x75d576dc = new AbstractList<String>() { // from class: kotlin.text.MatcherMatchResult$groupValues$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public final /* bridge */ boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return contains((String) obj);
                    }
                    return false;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public String get(int index) {
                    String group = C0299x3271d0aa.this.f1693xfbe0c504.group(index);
                    return group == null ? "" : group;
                }

                @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
                /* renamed from: getSize */
                public int getF1257x1378447b() {
                    return C0299x3271d0aa.this.f1693xfbe0c504.groupCount() + 1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return indexOf((String) obj);
                    }
                    return -1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return lastIndexOf((String) obj);
                    }
                    return -1;
                }

                public /* bridge */ boolean contains(String str) {
                    return super.contains((Object) str);
                }

                public /* bridge */ int indexOf(String str) {
                    return super.indexOf((Object) str);
                }

                public /* bridge */ int lastIndexOf(String str) {
                    return super.lastIndexOf((Object) str);
                }
            };
        }
        MatcherMatchResult$groupValues$1 matcherMatchResult$groupValues$1 = this.f1696x75d576dc;
        Intrinsics.checkNotNull(matcherMatchResult$groupValues$1);
        return matcherMatchResult$groupValues$1;
    }

    @Override // kotlin.text.MatchResult
    public final MatchGroupCollection getGroups() {
        return this.f1695x1378447b;
    }

    @Override // kotlin.text.MatchResult
    public final IntRange getRange() {
        IntRange until;
        until = AbstractC0296x1378447b.until(r0.start(), this.f1693xfbe0c504.end());
        return until;
    }

    @Override // kotlin.text.MatchResult
    public final String getValue() {
        String group = this.f1693xfbe0c504.group();
        Intrinsics.checkNotNullExpressionValue(group, "group(...)");
        return group;
    }

    @Override // kotlin.text.MatchResult
    public final MatchResult next() {
        int i;
        Matcher matcher = this.f1693xfbe0c504;
        int end = matcher.end();
        if (matcher.end() == matcher.start()) {
            i = 1;
        } else {
            i = 0;
        }
        int i2 = end + i;
        CharSequence charSequence = this.f1694x3271d0aa;
        if (i2 <= charSequence.length()) {
            Matcher matcher2 = matcher.pattern().matcher(charSequence);
            Intrinsics.checkNotNullExpressionValue(matcher2, "matcher(...)");
            return RegexKt.access$findNext(matcher2, i2, charSequence);
        }
        return null;
    }
}
