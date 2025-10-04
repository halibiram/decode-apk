package io.github.g00fy2.quickie;

import android.graphics.Matrix;
import android.util.Size;
import androidx.annotation.OptIn;
import androidx.camera.core.ExperimentalGetImage;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import defpackage.AbstractC0872x30ada666;
import defpackage.AbstractC0962xa4a1ff52;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lio/github/g00fy2/quickie/QRCodeAnalyzer;", "Landroidx/camera/core/ImageAnalysis$Analyzer;", "", "barcodeFormats", "Lkotlin/Function1;", "", "", "onSuccess", "", "onFailure", "", "onPassCompleted", "<init>", "([ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "Landroidx/camera/core/ImageProxy;", "imageProxy", "analyze", "(Landroidx/camera/core/ImageProxy;)V", "Companion", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nQRCodeAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QRCodeAnalyzer.kt\nio/github/g00fy2/quickie/QRCodeAnalyzer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n1611#2,9:242\n1863#2:251\n1864#2:253\n1620#2:254\n1#3:252\n*S KotlinDebug\n*F\n+ 1 QRCodeAnalyzer.kt\nio/github/g00fy2/quickie/QRCodeAnalyzer\n*L\n55#1:242,9\n55#1:251\n55#1:253\n55#1:254\n55#1:252\n*E\n"})
/* loaded from: classes3.dex */
public final class QRCodeAnalyzer implements ImageAnalysis.Analyzer {

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static final MultiFormatReader f1066x95f25580 = new MultiFormatReader();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int[] f1067xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function1 f1068x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Function1 f1069x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Function1 f1070x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public volatile boolean f1071x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public long f1072x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final AtomicBoolean f1073x34271fae;

    public QRCodeAnalyzer(@NotNull int[] barcodeFormats, @NotNull Function1<? super String, Unit> onSuccess, @NotNull Function1<? super Throwable, Unit> onFailure, @NotNull Function1<? super Boolean, Unit> onPassCompleted) {
        Intrinsics.checkNotNullParameter(barcodeFormats, "barcodeFormats");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        Intrinsics.checkNotNullParameter(onPassCompleted, "onPassCompleted");
        this.f1067xfbe0c504 = barcodeFormats;
        this.f1068x3271d0aa = onSuccess;
        this.f1069x1378447b = onFailure;
        this.f1070x75d576dc = onPassCompleted;
        this.f1073x34271fae = new AtomicBoolean(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    @OptIn(markerClass = {ExperimentalGetImage.class})
    public void analyze(@NotNull ImageProxy imageProxy) {
        byte[] bArr;
        Object m1764constructorimpl;
        Intrinsics.checkNotNullParameter(imageProxy, "imageProxy");
        if (imageProxy.getImage() == null) {
            return;
        }
        if (this.f1071x9738a56c && System.currentTimeMillis() - this.f1072x9e171bf9 < 1000) {
            imageProxy.close();
            return;
        }
        this.f1073x34271fae.set(true);
        MultiFormatReader multiFormatReader = f1066x95f25580;
        Pair pair = TuplesKt.to(DecodeHintType.CHARACTER_SET, Charsets.UTF_8);
        Pair pair2 = TuplesKt.to(DecodeHintType.TRY_HARDER, Boolean.TRUE);
        DecodeHintType decodeHintType = DecodeHintType.POSSIBLE_FORMATS;
        List<Integer> list = ArraysKt___ArraysKt.toList(this.f1067xfbe0c504);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            BarcodeFormat value = ((io.github.g00fy2.quickie.config.BarcodeFormat) io.github.g00fy2.quickie.config.BarcodeFormat.getEntries().get(((Number) it.next()).intValue())).getValue();
            if (value != null) {
                arrayList.add(value);
            }
        }
        multiFormatReader.setHints(AbstractC0962xa4a1ff52.mapOf(pair, pair2, TuplesKt.to(decodeHintType, arrayList)));
        if ((imageProxy.getFormat() == 35 || imageProxy.getFormat() == 39 || imageProxy.getFormat() == 40) && imageProxy.getPlanes().length == 3) {
            ImageProxy.PlaneProxy planeProxy = imageProxy.getPlanes()[0];
            ByteBuffer buffer = planeProxy.getBuffer();
            Intrinsics.checkNotNullExpressionValue(buffer, "getBuffer(...)");
            byte[] bArr2 = new byte[buffer.remaining()];
            buffer.get(bArr2);
            buffer.rewind();
            int width = imageProxy.getWidth();
            int height = imageProxy.getHeight();
            int rowStride = planeProxy.getRowStride();
            int pixelStride = planeProxy.getPixelStride();
            int i = width * height;
            byte[] byteArray = new byte[i];
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    byteArray[(i2 * width) + i3] = bArr2[(i3 * pixelStride) + (i2 * rowStride)];
                }
            }
            int width2 = imageProxy.getWidth();
            int height2 = imageProxy.getHeight();
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            int rotationDegrees = imageProxy.getImageInfo().getRotationDegrees();
            if (rotationDegrees == 0 || rotationDegrees % 90 != 0) {
                bArr = byteArray;
            } else {
                bArr = new byte[i];
                for (int i4 = 0; i4 < height2; i4++) {
                    for (int i5 = 0; i5 < width2; i5++) {
                        if (rotationDegrees != 90) {
                            if (rotationDegrees != 180) {
                                if (rotationDegrees == 270) {
                                    bArr[(i5 * height2) + i4] = byteArray[(((i4 * width2) + width2) - i5) - 1];
                                }
                            } else {
                                bArr[(((((height2 - i4) - 1) * width2) + width2) - i5) - 1] = byteArray[(i4 * width2) + i5];
                            }
                        } else {
                            bArr[(((i5 * height2) + height2) - i4) - 1] = byteArray[(i4 * width2) + i5];
                        }
                    }
                }
                Intrinsics.checkNotNullParameter(bArr, "<set-?>");
                if (rotationDegrees != 180) {
                    height2 = width2;
                    width2 = height2;
                }
            }
            try {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    com.google.zxing.Result decodeWithState = f1066x95f25580.decodeWithState(new BinaryBitmap(new HybridBinarizer(new PlanarYUVLuminanceSource(bArr, width2, height2, 0, 0, width2, height2, false))));
                    Function1 function1 = this.f1068x3271d0aa;
                    String text = decodeWithState.getText();
                    Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                    function1.invoke(text);
                    this.f1070x75d576dc.invoke(Boolean.valueOf(this.f1071x9738a56c));
                    imageProxy.close();
                    m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
                }
                Throwable m1767exceptionOrNullimpl = Result.m1767exceptionOrNullimpl(m1764constructorimpl);
                if (m1767exceptionOrNullimpl != null) {
                    if (m1767exceptionOrNullimpl instanceof NotFoundException) {
                        int length = bArr.length;
                        for (int i6 = 0; i6 < length; i6++) {
                            bArr[i6] = (byte) (~bArr[i6]);
                        }
                        com.google.zxing.Result decodeWithState2 = f1066x95f25580.decodeWithState(new BinaryBitmap(new HybridBinarizer(new PlanarYUVLuminanceSource(bArr, width2, height2, 0, 0, width2, height2, false))));
                        Function1 function12 = this.f1068x3271d0aa;
                        String text2 = decodeWithState2.getText();
                        Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                        function12.invoke(text2);
                        this.f1070x75d576dc.invoke(Boolean.valueOf(this.f1071x9738a56c));
                        imageProxy.close();
                    } else {
                        throw m1767exceptionOrNullimpl;
                    }
                }
            } catch (Throwable th2) {
                try {
                    if (!(th2 instanceof NotFoundException)) {
                        this.f1071x9738a56c = true;
                        this.f1072x9e171bf9 = System.currentTimeMillis();
                        this.f1069x1378447b.invoke(th2);
                    }
                    th2.printStackTrace();
                } finally {
                    f1066x95f25580.reset();
                    imageProxy.close();
                }
            }
            this.f1073x34271fae.set(false);
        }
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ Size getDefaultTargetResolution() {
        return AbstractC0872x30ada666.m3433xfbe0c504(this);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ int getTargetCoordinateSystem() {
        return AbstractC0872x30ada666.m3434x3271d0aa(this);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ void updateTransform(Matrix matrix) {
        AbstractC0872x30ada666.m3435x1378447b(this, matrix);
    }

    public /* synthetic */ QRCodeAnalyzer(int[] iArr, Function1 function1, Function1 function12, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new int[]{io.github.g00fy2.quickie.config.BarcodeFormat.QR_CODE.ordinal()} : iArr, function1, function12, function13);
    }
}
