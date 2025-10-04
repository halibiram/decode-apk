package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import com.google.android.ump.ConsentInformation;
import com.tknetwork.tunnel.activities.MainBaseActivity;

/* renamed from: 딐뒐되땯뒐땭돵뒐땡딞땹땤딝뒼듐돼듐뒨딅돛뒐딃됴돴땧도땫딨돰딨딌뒻땩뒘듻뒷딻뎸땁땡뎽둡딅딤둠딠딜땻둑듐돛땰돤돳땨땰듽뎽딁되듰땃땀돰땫디뎬든딟돸뒈땯됴되땭뎻됫둬됨돸땳땬돠딃딟돛듼뒋땁돶땧디땹돳듽땸뎸땦뒹땭돝뎰땮땔돠딨딟땫땵땮딝뎰딐둡땃듨둑돼뎠땰딞땻땪돼딝딅땥딀됫돸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0955xd0e9233c implements ConsentInformation.OnConsentInfoUpdateSuccessListener, ActivityResultCallback {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ MainBaseActivity f5129xfbe0c504;

    public /* synthetic */ C0955xd0e9233c(MainBaseActivity mainBaseActivity) {
        this.f5129xfbe0c504 = mainBaseActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        MainBaseActivity.m1483x1aebc6d9(this.f5129xfbe0c504, (ActivityResult) obj);
    }

    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
    public void onConsentInfoUpdateSuccess() {
        MainBaseActivity.m1484xab142723(this.f5129xfbe0c504);
    }
}
