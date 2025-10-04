package defpackage;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.content.UriMatcherCompat;
import androidx.core.util.Predicate;

/* renamed from: 둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0642x79bc353 implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4431xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4432x3271d0aa;

    public /* synthetic */ C0642x79bc353(Object obj, int i) {
        this.f4431xfbe0c504 = i;
        this.f4432x3271d0aa = obj;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f4431xfbe0c504;
        return AbstractC1042xefe65103.m3724xfbe0c504(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f4431xfbe0c504) {
            case 0:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 1:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 2:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 3:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            default:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
        }
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f4431xfbe0c504;
        return AbstractC1042xefe65103.m3726x1378447b(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        boolean lambda$asPredicate$0;
        switch (this.f4431xfbe0c504) {
            case 0:
                return ((java.util.function.Predicate) this.f4432x3271d0aa).test((ClipData.Item) obj);
            case 1:
                return ((ComponentName) this.f4432x3271d0aa).equals((ComponentName) obj);
            case 2:
                return AbstractC1042xefe65103.m3732x3db60231(this.f4432x3271d0aa, obj);
            case 3:
                return AbstractC1042xefe65103.m3728x9738a56c((Predicate) this.f4432x3271d0aa, obj);
            default:
                lambda$asPredicate$0 = UriMatcherCompat.lambda$asPredicate$0((UriMatcher) this.f4432x3271d0aa, (Uri) obj);
                return lambda$asPredicate$0;
        }
    }
}
