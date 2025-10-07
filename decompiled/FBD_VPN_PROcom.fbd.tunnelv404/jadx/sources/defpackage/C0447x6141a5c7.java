package defpackage;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;

/* renamed from: 돤딐듟돶뒉땬뒘도뒾돳딐돤딎듐딤따딜뒵둠뒀땍땐땵땭딌뒛딅둔뎡땬둣뎡돠둠됐뎽듨땄땨뒉듸땋땳딹돤딽땹됫뒬땜둥돠둬딄땱땋디딃땥돷뒬둠됴뎽뎨땅땄땝뎻땠딅땱땰돰뒉땟딟땁딤딅땣딹땍뒙땸뒝땍뒾땵뎹딌드뎹둠뒉땨땬두듟돳땮땔땤땣됩땬뒐둘득딃땬땠딄뎨딝땄둡땭듬둘됐땬두땹돵딻땝돝땵땍, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0447x6141a5c7 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f3899xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int[] f3900x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Bitmap f3901x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Function1 f3902x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ Function1 f3903x9738a56c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0447x6141a5c7(int[] iArr, Bitmap bitmap, Function1 function1, Function1 function12, Continuation continuation) {
        super(2, continuation);
        this.f3900x3271d0aa = iArr;
        this.f3901x1378447b = bitmap;
        this.f3902x75d576dc = function1;
        this.f3903x9738a56c = function12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0447x6141a5c7 c0447x6141a5c7 = new C0447x6141a5c7(this.f3900x3271d0aa, this.f3901x1378447b, this.f3902x75d576dc, this.f3903x9738a56c, continuation);
        c0447x6141a5c7.f3899xfbe0c504 = obj;
        return c0447x6141a5c7;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0447x6141a5c7) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m1764constructorimpl;
        Object m1764constructorimpl2;
        Function1 function1 = this.f3902x75d576dc;
        Bitmap bitmap = this.f3901x1378447b;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        Pair pair = TuplesKt.to(DecodeHintType.CHARACTER_SET, Charsets.UTF_8);
        Pair pair2 = TuplesKt.to(DecodeHintType.TRY_HARDER, Boxing.boxBoolean(true));
        DecodeHintType decodeHintType = DecodeHintType.POSSIBLE_FORMATS;
        List<Integer> list = ArraysKt___ArraysKt.toList(this.f3900x3271d0aa);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            BarcodeFormat value = ((io.github.g00fy2.quickie.config.BarcodeFormat) io.github.g00fy2.quickie.config.BarcodeFormat.getEntries().get(((Number) it.next()).intValue())).getValue();
            if (value != null) {
                arrayList.add(value);
            }
        }
        multiFormatReader.setHints(AbstractC0962xa4a1ff52.mapOf(pair, pair2, TuplesKt.to(decodeHintType, arrayList)));
        try {
            Result.Companion companion = Result.INSTANCE;
            int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            String text = multiFormatReader.decode(new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(bitmap.getWidth(), bitmap.getHeight(), iArr)))).getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            function1.invoke(text);
            m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m1767exceptionOrNullimpl = Result.m1767exceptionOrNullimpl(m1764constructorimpl);
        if (m1767exceptionOrNullimpl != null) {
            boolean z = m1767exceptionOrNullimpl instanceof NotFoundException;
            Function1 function12 = this.f3903x9738a56c;
            if (!z) {
                function12.invoke(m1767exceptionOrNullimpl);
            } else {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int[] iArr2 = new int[width];
                bitmap.getPixels(iArr2, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
                for (int i = 0; i < width; i++) {
                    iArr2[i] = ~iArr2[i];
                }
                RGBLuminanceSource rGBLuminanceSource = new RGBLuminanceSource(bitmap.getWidth(), bitmap.getHeight(), iArr2);
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    m1764constructorimpl2 = Result.m1764constructorimpl(multiFormatReader.decode(new BinaryBitmap(new HybridBinarizer(rGBLuminanceSource))));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    m1764constructorimpl2 = Result.m1764constructorimpl(ResultKt.createFailure(th2));
                }
                Throwable m1767exceptionOrNullimpl2 = Result.m1767exceptionOrNullimpl(m1764constructorimpl2);
                if (m1767exceptionOrNullimpl2 != null) {
                    function12.invoke(m1767exceptionOrNullimpl2);
                }
                if (Result.m1769isFailureimpl(m1764constructorimpl2)) {
                    m1764constructorimpl2 = null;
                }
                com.google.zxing.Result result = (com.google.zxing.Result) m1764constructorimpl2;
                if (result == null) {
                    return Unit.INSTANCE;
                }
                String text2 = result.getText();
                Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                function1.invoke(text2);
            }
        }
        return Unit.INSTANCE;
    }
}
