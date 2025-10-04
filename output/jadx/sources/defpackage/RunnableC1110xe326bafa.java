package defpackage;

import com.google.android.material.search.SearchView;

/* renamed from: 땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1110xe326bafa implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5412xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ SearchView f5413x3271d0aa;

    public /* synthetic */ RunnableC1110xe326bafa(SearchView searchView, int i) {
        this.f5412xfbe0c504 = i;
        this.f5413x3271d0aa = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5412xfbe0c504) {
            case 0:
                this.f5413x3271d0aa.lambda$clearFocusAndHideKeyboard$9();
                return;
            case 1:
                this.f5413x3271d0aa.lambda$requestFocusAndShowKeyboard$8();
                return;
            case 2:
                this.f5413x3271d0aa.show();
                return;
            default:
                this.f5413x3271d0aa.requestFocusAndShowKeyboardIfNeeded();
                return;
        }
    }
}
