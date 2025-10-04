package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.camera.core.impl.Observable;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderImpl;
import java.util.Map;
import java.util.concurrent.Executor;

/* renamed from: androidx.camera.video.internal.encoder.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0095xfbe0c504 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f229xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f230x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f231x1378447b;

    public /* synthetic */ RunnableC0095xfbe0c504(EncoderImpl.MediaCodecCallback mediaCodecCallback, Object obj, int i) {
        this.f229xfbe0c504 = i;
        this.f231x1378447b = mediaCodecCallback;
        this.f230x3271d0aa = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f229xfbe0c504) {
            case 0:
                EncoderImpl.lambda$addSignalEosTimeoutIfNeeded$9((Executor) this.f230x3271d0aa, (EncoderImpl.MediaCodecCallback) this.f231x1378447b);
                return;
            case 1:
                ((EncoderImpl) this.f230x3271d0aa).lambda$matchAcquisitionsAndFreeBufferIndexes$15((InputBufferImpl) this.f231x1378447b);
                return;
            case 2:
                EncoderImpl.ByteBufferInput.lambda$setActive$9((Map.Entry) this.f230x3271d0aa, (BufferProvider.State) this.f231x1378447b);
                return;
            case 3:
                ((Observable.Observer) this.f230x3271d0aa).onNewData((BufferProvider.State) this.f231x1378447b);
                return;
            case 4:
                ((EncoderImpl.ByteBufferInput) this.f230x3271d0aa).lambda$removeObserver$8((Observable.Observer) this.f231x1378447b);
                return;
            case 5:
                ((EncoderImpl.MediaCodecCallback) this.f231x1378447b).lambda$onOutputFormatChanged$7((MediaFormat) this.f230x3271d0aa);
                return;
            case 6:
                ((EncoderCallback) this.f230x3271d0aa).onEncodedData((EncodedDataImpl) this.f231x1378447b);
                return;
            case 7:
                EncoderImpl.MediaCodecCallback.lambda$onOutputFormatChanged$6((EncoderCallback) this.f230x3271d0aa, (MediaFormat) this.f231x1378447b);
                return;
            case 8:
                ((EncoderImpl.MediaCodecCallback) this.f231x1378447b).lambda$onError$4((MediaCodec.CodecException) this.f230x3271d0aa);
                return;
            default:
                ((Encoder.SurfaceInput.OnSurfaceUpdateListener) this.f230x3271d0aa).onSurfaceUpdate((Surface) this.f231x1378447b);
                return;
        }
    }

    public /* synthetic */ RunnableC0095xfbe0c504(Object obj, Object obj2, int i) {
        this.f229xfbe0c504 = i;
        this.f230x3271d0aa = obj;
        this.f231x1378447b = obj2;
    }
}
