package defpackage;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* renamed from: 딀땅둔돛듻듔둔딄됴땤땔뎨듌듬딌뒨둑땔듼됨돤땬뒼돶땰돤땪득딟듻딁둥돝둡땅둔디뒀둑뎽땨땦땲됐뒬딸땪땜땳뎽돠땹듰뒹뎰듟뒐뒉딸뒬돨듟땵듔뒛딟따됴뎸땅땸둑뒷뒋뒤됐땀뒋둠딀둔땬듐뒻됨땬됩듼뒝돝따뎡땄듨뎬둘땯드딄땟땝땲땭뎬뒼듰드뒀듔땹듔땃뒘된둔디땐뒨둣둠돠든땫따돛둑뎽둣돠뎨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0889x166c060e implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5012xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ String f5013x3271d0aa;

    public /* synthetic */ C0889x166c060e(String str, int i) {
        this.f5012xfbe0c504 = i;
        this.f5013x3271d0aa = str;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f5012xfbe0c504;
        return AbstractC1042xefe65103.m3724xfbe0c504(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f5012xfbe0c504) {
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
            default:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
        }
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f5012xfbe0c504;
        return AbstractC1042xefe65103.m3726x1378447b(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        boolean lambda$allowExtraOutput$16;
        boolean lambda$allowComponentWithPackage$9;
        boolean lambda$allowDataWithAuthority$8;
        boolean lambda$allowClipDataUriWithAuthority$11;
        boolean lambda$allowExtraStreamUriWithAuthority$15;
        switch (this.f5012xfbe0c504) {
            case 0:
                lambda$allowExtraOutput$16 = IntentSanitizer.Builder.lambda$allowExtraOutput$16(this.f5013x3271d0aa, (Uri) obj);
                return lambda$allowExtraOutput$16;
            case 1:
                return this.f5013x3271d0aa.equals((String) obj);
            case 2:
                lambda$allowComponentWithPackage$9 = IntentSanitizer.Builder.lambda$allowComponentWithPackage$9(this.f5013x3271d0aa, (ComponentName) obj);
                return lambda$allowComponentWithPackage$9;
            case 3:
                lambda$allowDataWithAuthority$8 = IntentSanitizer.Builder.lambda$allowDataWithAuthority$8(this.f5013x3271d0aa, (Uri) obj);
                return lambda$allowDataWithAuthority$8;
            case 4:
                lambda$allowClipDataUriWithAuthority$11 = IntentSanitizer.Builder.lambda$allowClipDataUriWithAuthority$11(this.f5013x3271d0aa, (Uri) obj);
                return lambda$allowClipDataUriWithAuthority$11;
            default:
                lambda$allowExtraStreamUriWithAuthority$15 = IntentSanitizer.Builder.lambda$allowExtraStreamUriWithAuthority$15(this.f5013x3271d0aa, (Uri) obj);
                return lambda$allowExtraStreamUriWithAuthority$15;
        }
    }
}
