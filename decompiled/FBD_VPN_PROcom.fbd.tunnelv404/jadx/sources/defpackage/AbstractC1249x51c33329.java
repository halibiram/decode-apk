package defpackage;

import android.os.Bundle;
import androidx.browser.trusted.TrustedWebActivityDisplayMode;

/* renamed from: 땭뎡따딌땪둑둬둘땋딃딻돰딐뒻딐둠뎸땫딞땨뒋땝뎹두돛딅땣뒵디뒛돴돴딃둬딤땥땨뎰뒙땻드뎡돠들둠뒤땵도둠뒷딄들땪땍뒷돨돳듐뒼땝둔뒵따듨뎽뎡뒉둘듨뒵듐뒹뒬뒀땰둣둣땯뒤뎨듸뒋땱땁돷땵뎸돠되둣뒋돷돼뎨됩둘뒘땬딄뒾딞되땟딝도듐땸둡땟뒻땨딞돨뒷듽뎻됐땳돛땅땣도됨듼돤땝돷돼뎽됫, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1249x51c33329 {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static TrustedWebActivityDisplayMode m4013xfbe0c504(Bundle bundle) {
        if (bundle.getInt(TrustedWebActivityDisplayMode.KEY_ID) != 1) {
            return new TrustedWebActivityDisplayMode.DefaultMode();
        }
        return TrustedWebActivityDisplayMode.ImmersiveMode.fromBundle(bundle);
    }
}
