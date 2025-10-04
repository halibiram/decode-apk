package defpackage;

import android.media.MediaPlayer;
import com.google.zxing.client.android.BeepManager;

/* renamed from: 돤됫된둑딐땝둘듟딝땩딝뒐딜뒼뒈땲땔딐드땟딨둔뒘돸뒝땃둥땻땦뎽땮딞듔들뎹땃뒨돠땱뒹뎽뒵뎻뒐돝딤득뒷땸들딜듬땋돳뒾돴득듻땫딟딌딀둣됴딄뒋듨둑듐땩딝뒀딎됫된땅땫득돳뎽땩뒀땐뒼딟돶땟듸뒤됨듼땫듻뒘되딃듸둬뎡땸딀땲땵뒝둣뒤뒛땫딝딃두딃둬뎬둥뒛듻딤땠뒉듐땫뎹듨듬돛땝디땍땰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0443x9099146 implements MediaPlayer.OnErrorListener {
    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        boolean lambda$playBeepSound$1;
        lambda$playBeepSound$1 = BeepManager.lambda$playBeepSound$1(mediaPlayer, i, i2);
        return lambda$playBeepSound$1;
    }
}
