package defpackage;

import android.content.ClipData;
import android.content.ComponentName;
import android.net.Uri;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* renamed from: 딀땣돰딁두된드뎽듬듔돳땧땣드디땩땡뒤땭돠땵딽딅뒙딀땣땻둑뒝땫뒬될돨딄따듸둬땟땍뒘둔듻딌듼딁뒈듰땍땳뒹됩땲땅드땔땩도돵돴돠뒾딻땃땣뒙뒉돰땟됨듸듼듔땄듬딀딞땣땦땯뒋뒐됩뎰듔돴딹뒛뒉땥돰땻딠뒛듰뒙돳뒾디뎹뎹돸뒨딜돰도땱두뒤딜딌뎹될땣딟됨땧뎹뒵딠땜땮딜둠뎸땩돴된듐뒘땬, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0890xa828f83 implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5014xfbe0c504;

    public /* synthetic */ C0890xa828f83(int i) {
        this.f5014xfbe0c504 = i;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f5014xfbe0c504;
        return AbstractC1042xefe65103.m3724xfbe0c504(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f5014xfbe0c504) {
            case 0:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 1:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 2:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 3:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 4:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 5:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 6:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 7:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 8:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 9:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 10:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            default:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
        }
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f5014xfbe0c504;
        return AbstractC1042xefe65103.m3726x1378447b(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f5014xfbe0c504) {
            case 0:
                return IntentSanitizer.Builder.m543x9d12c1f4((ComponentName) obj);
            case 1:
                return IntentSanitizer.Builder.m542x3db60231(obj);
            case 2:
                return IntentSanitizer.Builder.m549x85f0360e((String) obj);
            case 3:
                return IntentSanitizer.Builder.m545xd2bcb0cf((Uri) obj);
            case 4:
                return IntentSanitizer.Builder.m535x3271d0aa((String) obj);
            case 5:
                return IntentSanitizer.Builder.m544x1db10c9d((String) obj);
            case 6:
                return IntentSanitizer.Builder.m539x9e171bf9((String) obj);
            case 7:
                return IntentSanitizer.Builder.m534xfbe0c504((ComponentName) obj);
            case 8:
                return IntentSanitizer.Builder.m546x8c6fc18a((Uri) obj);
            case 9:
                return IntentSanitizer.Builder.m550xad53da1a((ClipData) obj);
            case 10:
                return IntentSanitizer.Builder.m548xab142723(obj);
            default:
                return AbstractC1042xefe65103.m3731x95f25580(obj);
        }
    }
}
