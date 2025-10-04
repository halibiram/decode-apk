package kotlin.text;

import defpackage.C0346x75d576dc;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0002¢\u0006\u0004\b\f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "", "index", "get", "(I)Lkotlin/text/MatchGroup;", "", "name", "(Ljava/lang/String;)Lkotlin/text/MatchGroup;", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements MatchNamedGroupCollection {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ C0299x3271d0aa f1677xfbe0c504;

    public MatcherMatchResult$groups$1(C0299x3271d0aa c0299x3271d0aa) {
        this.f1677xfbe0c504 = c0299x3271d0aa;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof MatchGroup) {
            return contains((MatchGroup) obj);
        }
        return false;
    }

    @Override // kotlin.text.MatchGroupCollection
    public MatchGroup get(int index) {
        IntRange until;
        C0299x3271d0aa c0299x3271d0aa = this.f1677xfbe0c504;
        until = AbstractC0296x1378447b.until(r1.start(index), c0299x3271d0aa.f1693xfbe0c504.end(index));
        if (until.getStart().intValue() < 0) {
            return null;
        }
        String group = c0299x3271d0aa.f1693xfbe0c504.group(index);
        Intrinsics.checkNotNullExpressionValue(group, "group(...)");
        return new MatchGroup(group, until);
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int getF1257x1378447b() {
        return this.f1677xfbe0c504.f1693xfbe0c504.groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<MatchGroup> iterator() {
        return SequencesKt___SequencesKt.map(CollectionsKt___CollectionsKt.asSequence(CollectionsKt__CollectionsKt.getIndices(this)), new C0346x75d576dc(this, 9)).iterator();
    }

    public /* bridge */ boolean contains(MatchGroup matchGroup) {
        return super.contains((Object) matchGroup);
    }

    @Override // kotlin.text.MatchNamedGroupCollection
    public MatchGroup get(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return PlatformImplementationsKt.IMPLEMENTATIONS.getMatchResultNamedGroup(this.f1677xfbe0c504.f1693xfbe0c504, name);
    }
}
