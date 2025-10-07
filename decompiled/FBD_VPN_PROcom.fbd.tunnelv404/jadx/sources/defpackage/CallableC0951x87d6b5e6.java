package defpackage;

import android.content.Context;
import androidx.work.impl.Processor;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* renamed from: 딎땀땨딻땧딄뎡두뒛딻땍땀뎰뒹땣두돷뒈됫돵됫딌뒋땄듰뎸듔땪땁땰뒘딨땫둥돵딸듔둘뒻됩두뒤됴돰돵땍둠땠땦딐뎸딐뒐딻뎡땍둬뎸둔돷땡둥땭땻돼딨돠땜딅됨돸둘땋돳뎬뒹듰뒨돳땭딻드땀뒷뎻딤땃듐득돷딟딄돨뎸땐둣돸딠둣땄듸뒤딤듌듼땻돛듬딠땥된될땯되뎽득땹뒉뒋뒻딄듐뒤땲땭땔뒛듽따돵, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC0951x87d6b5e6 implements Callable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5119xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ String f5120x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f5121x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f5122x75d576dc;

    public /* synthetic */ CallableC0951x87d6b5e6(int i, String str, Object obj, Object obj2) {
        this.f5119xfbe0c504 = i;
        this.f5121x1378447b = obj;
        this.f5122x75d576dc = obj2;
        this.f5120x3271d0aa = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        LottieResult fromInputStreamSync;
        switch (this.f5119xfbe0c504) {
            case 0:
                fromInputStreamSync = LottieCompositionFactory.fromInputStreamSync((Context) this.f5121x1378447b, (InputStream) this.f5122x75d576dc, this.f5120x3271d0aa);
                return fromInputStreamSync;
            default:
                return Processor.m864xfbe0c504((Processor) this.f5121x1378447b, (ArrayList) this.f5122x75d576dc, this.f5120x3271d0aa);
        }
    }
}
