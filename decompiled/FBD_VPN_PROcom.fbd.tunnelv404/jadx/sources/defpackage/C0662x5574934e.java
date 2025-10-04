package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.search.SearchView;

/* renamed from: 뒈듨듼땬딜딄듐듟뎨됫듌딞뒤돵딄뎨뎽뎸뒐둑뎽듌뒻뒈둑딄뒼뒤뒉돝땭땤됩됨둔둘딅땅뒘땲딄땤땸뒘딁땐돷된돴딸땯딽듽됴도딁땨땦땻뒾딀땀땠딃딠뒋듐됩듼딄땟딄딅땝듨딅땲듬뒐도둘뒈듸도땨땅딤돤땋딄딹딽든듬된뒝땜땲된돸됐듐돶뒝뎨땦듟둘딐땳땪땅듐듐딻둔두듔땤뎸땔땱둑둠땟따뎻돼돨돸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0662x5574934e implements CallbackToFutureAdapter.Resolver, OnApplyWindowInsetsListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4469xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4470x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4471x1378447b;

    public /* synthetic */ C0662x5574934e(Object obj, int i, int i2) {
        this.f4471x1378447b = obj;
        this.f4469xfbe0c504 = i;
        this.f4470x3271d0aa = i2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$snapshot$8;
        lambda$snapshot$8 = ((DefaultSurfaceProcessor) this.f4471x1378447b).lambda$snapshot$8(this.f4469xfbe0c504, this.f4470x3271d0aa, completer);
        return lambda$snapshot$8;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat lambda$setUpDividerInsetListener$6;
        lambda$setUpDividerInsetListener$6 = SearchView.lambda$setUpDividerInsetListener$6((ViewGroup.MarginLayoutParams) this.f4471x1378447b, this.f4469xfbe0c504, this.f4470x3271d0aa, view, windowInsetsCompat);
        return lambda$setUpDividerInsetListener$6;
    }
}
