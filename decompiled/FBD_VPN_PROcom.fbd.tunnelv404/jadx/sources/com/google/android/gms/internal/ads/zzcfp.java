package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcfp extends zzcfr implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    private static final Map zzc;
    private final zzcgl zzd;
    private final zzcgm zze;
    private final boolean zzf;
    private int zzg;
    private int zzh;
    private MediaPlayer zzi;
    private Uri zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private zzcgj zzn;
    private final boolean zzo;
    private int zzp;
    private zzcfq zzq;
    private boolean zzr;
    private Integer zzs;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        Integer m4358x9738a56c = AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-1067838391719723794L, 7533319641995197034L, -7611262922375366032L, -5392087573509375872L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-6014079874734379110L, -2085510436284586199L, -6197261554731706229L, 8101662965116826395L, 1796971340115600762L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-8585421820413701116L, 935630536681626263L, -3181498833947945679L, -5164395940615449548L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-4119276362186620266L, -8115554465649787016L, 3136160738269847067L, -6242194221673823231L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-719668081284610004L, -3981158141157712161L, -2323911406940948852L, -823895436407376490L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{3938209535455227763L, 8122978262329396567L, -3144566748473090485L}), hashMap, -1004, -1007), -1010), -110), 3), 100), 1);
        hashMap.put(m4358x9738a56c, new ObfuscatedString(new long[]{8672128746772682396L, -3020063034485103080L, -9172699935400586139L, 7076099116948748776L}).toString());
        hashMap.put(AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-845408429561538391L, 8537356616194177134L, -7797646222415788521L, -2948862657050888370L, -4684248981653358647L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{2442631012599591953L, -7698441470677139994L, -7755721830474195791L, -6660116732950382925L, -5947347360766761459L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{7033189156096660967L, -8836717200891530554L, 7684540007694945319L, -2317520098745477451L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{4928612110721908338L, 1590477958781909672L, -3448000913718431240L, 7576516215689000761L, 72568153952645381L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-4374764657764646995L, -9162163696919206544L, 9102538891635483416L, -8025670488172652321L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{7155477541806783157L, 1606118330345166288L, 8575147668445757174L, 955123377524506742L, 2515105834194573240L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{6648577097397027347L, 7329183793833040407L, 766305908054346772L, 5421060459361177495L, 6860289600909540649L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{6440641521115020327L, -3353923824536326978L, -7971181260530888961L, -3144695909836664218L}), hashMap, m4358x9738a56c, TypedValues.TransitionType.TYPE_DURATION), TypedValues.TransitionType.TYPE_FROM), TypedValues.TransitionType.TYPE_TO), 800), 801), 802), TypedValues.Custom.TYPE_FLOAT), TypedValues.Custom.TYPE_COLOR), new ObfuscatedString(new long[]{-7983000861312775009L, 1962578386388618670L, 8935866300583921481L, 269027390755672998L, -8272163919063714418L}).toString());
    }

    public zzcfp(Context context, zzcgl zzcglVar, boolean z, boolean z2, zzcgk zzcgkVar, zzcgm zzcgmVar) {
        super(context);
        this.zzg = 0;
        this.zzh = 0;
        this.zzr = false;
        this.zzs = null;
        setSurfaceTextureListener(this);
        this.zzd = zzcglVar;
        this.zze = zzcgmVar;
        this.zzo = z;
        this.zzf = z2;
        zzcgmVar.zza(this);
    }

    private final void zzD() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3046774601335444214L, -3325197459980325691L, -3311359378150580402L, -6667234719537925143L, 5702264115616500308L, -5891079970640511276L}).toString());
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzj != null && surfaceTexture != null) {
            zzE(false);
            try {
                com.google.android.gms.ads.internal.zzt.zzk();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.zzi = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.zzi.setOnCompletionListener(this);
                this.zzi.setOnErrorListener(this);
                this.zzi.setOnInfoListener(this);
                this.zzi.setOnPreparedListener(this);
                this.zzi.setOnVideoSizeChangedListener(this);
                this.zzm = 0;
                if (this.zzo) {
                    zzcgj zzcgjVar = new zzcgj(getContext());
                    this.zzn = zzcgjVar;
                    zzcgjVar.zzd(surfaceTexture, getWidth(), getHeight());
                    this.zzn.start();
                    SurfaceTexture zzb = this.zzn.zzb();
                    if (zzb != null) {
                        surfaceTexture = zzb;
                    } else {
                        this.zzn.zze();
                        this.zzn = null;
                    }
                }
                this.zzi.setDataSource(getContext(), this.zzj);
                com.google.android.gms.ads.internal.zzt.zzl();
                this.zzi.setSurface(new Surface(surfaceTexture));
                this.zzi.setAudioStreamType(3);
                this.zzi.setScreenOnWhilePlaying(true);
                this.zzi.prepareAsync();
                zzF(1);
            } catch (IOException e) {
                e = e;
                zzcec.zzk(new ObfuscatedString(new long[]{-2189546369069813999L, -5421294802135572574L, -1182595287145423135L, 7786720920469212285L, -3861293936655238199L, -1729469607221810275L}).toString().concat(String.valueOf(this.zzj)), e);
                onError(this.zzi, 1, 0);
            } catch (IllegalArgumentException e2) {
                e = e2;
                zzcec.zzk(new ObfuscatedString(new long[]{-2189546369069813999L, -5421294802135572574L, -1182595287145423135L, 7786720920469212285L, -3861293936655238199L, -1729469607221810275L}).toString().concat(String.valueOf(this.zzj)), e);
                onError(this.zzi, 1, 0);
            } catch (IllegalStateException e3) {
                e = e3;
                zzcec.zzk(new ObfuscatedString(new long[]{-2189546369069813999L, -5421294802135572574L, -1182595287145423135L, 7786720920469212285L, -3861293936655238199L, -1729469607221810275L}).toString().concat(String.valueOf(this.zzj)), e);
                onError(this.zzi, 1, 0);
            }
        }
    }

    private final void zzE(boolean z) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1037196045208754086L, -2738024225099162209L, 3543411588484378364L, 4731268572988430680L, -7856774049455753063L}).toString());
        zzcgj zzcgjVar = this.zzn;
        if (zzcgjVar != null) {
            zzcgjVar.zze();
            this.zzn = null;
        }
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzi.release();
            this.zzi = null;
            zzF(0);
            if (z) {
                this.zzh = 0;
            }
        }
    }

    private final void zzF(int i) {
        if (i == 3) {
            this.zze.zzc();
            this.zzb.zzb();
        } else if (this.zzg == 3) {
            this.zze.zze();
            this.zzb.zzc();
        }
        this.zzg = i;
    }

    private final void zzG(float f) {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{-964931848430619038L, 7550790842971423788L, -8853438459088515733L, 6482950211106474695L, 245387688470575760L, 8412430481822582207L, 3995127929827562706L, -3759543575769902544L, 4013009763032015431L, 8883686365253942696L}).toString());
        }
    }

    private final boolean zzH() {
        int i;
        return (this.zzi == null || (i = this.zzg) == -1 || i == 0 || i == 1) ? false : true;
    }

    public static /* bridge */ /* synthetic */ void zzl(zzcfp zzcfpVar, MediaPlayer mediaPlayer) {
        MediaFormat format;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && zzcfpVar.zzd != null && mediaPlayer != null) {
            try {
                MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
                if (trackInfo != null) {
                    HashMap hashMap = new HashMap();
                    for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                        if (trackInfo2 != null) {
                            int trackType = trackInfo2.getTrackType();
                            if (trackType != 1) {
                                if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                                    if (format.containsKey(new ObfuscatedString(new long[]{-7066163813582286959L, -1847125429694987915L}).toString())) {
                                        hashMap.put(new ObfuscatedString(new long[]{-3401866913303679625L, 4405325967968848484L, 6516209558513129312L}).toString(), format.getString(new ObfuscatedString(new long[]{-8345274604370886165L, -1372348653383945588L}).toString()));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format.containsKey(new ObfuscatedString(new long[]{-4517378532296417587L, 3973701556624805878L, 665751961303374895L}).toString())) {
                                        hashMap.put(new ObfuscatedString(new long[]{2441176185031840128L, 5318668597506143482L, -7343056547562695171L}).toString(), format.getString(new ObfuscatedString(new long[]{-4303441131909756042L, -4766329390591192978L, 9190688784568687190L}).toString()));
                                    }
                                }
                            } else {
                                MediaFormat format2 = trackInfo2.getFormat();
                                if (format2 != null) {
                                    if (format2.containsKey(new ObfuscatedString(new long[]{-3956326407103517988L, 8025205760860240960L, -8659206589845791633L}).toString())) {
                                        try {
                                            hashMap.put(new ObfuscatedString(new long[]{-3705524882716096783L, -7978517854705305732L, 5407001803551403314L}).toString(), String.valueOf(format2.getFloat(new ObfuscatedString(new long[]{4774818492242899555L, 7936188254603689688L, -6421354209596705331L}).toString())));
                                        } catch (ClassCastException unused) {
                                            hashMap.put(new ObfuscatedString(new long[]{-5256746301474265425L, -8604503935304870271L, -6145827005726683287L}).toString(), String.valueOf(format2.getInteger(new ObfuscatedString(new long[]{-1556410467622712296L, -9140324811081193578L, 1069249052580269999L}).toString())));
                                        }
                                    }
                                    if (format2.containsKey(new ObfuscatedString(new long[]{5212022331151245439L, 1673219090897217731L}).toString())) {
                                        Integer valueOf = Integer.valueOf(format2.getInteger(new ObfuscatedString(new long[]{1106579093403757532L, -1096608039413133942L}).toString()));
                                        zzcfpVar.zzs = valueOf;
                                        hashMap.put(new ObfuscatedString(new long[]{2903138360624712774L, 2165777555890366609L}).toString(), String.valueOf(valueOf));
                                    }
                                    if (format2.containsKey(new ObfuscatedString(new long[]{1780443681630066997L, 2130616722684181277L}).toString()) && format2.containsKey(new ObfuscatedString(new long[]{-2898922600103073941L, 5875652451442293396L}).toString())) {
                                        hashMap.put(new ObfuscatedString(new long[]{1486304338338272119L, -510690476736734217L, -1269392584122299352L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-253996435048588655L, -270788680756902699L}), AbstractC0749x8313616e.m3340x952a0a9e(format2.getInteger(new ObfuscatedString(new long[]{36200782268978658L, 3123919445635691490L}).toString())), format2.getInteger(new ObfuscatedString(new long[]{-5362275252149350343L, 6579393968448261355L}).toString())));
                                    }
                                    if (format2.containsKey(new ObfuscatedString(new long[]{2930326297003894412L, 7045617421368124805L}).toString())) {
                                        hashMap.put(new ObfuscatedString(new long[]{-4348880288848794274L, -2889400554350208205L, 2085265665768581303L}).toString(), format2.getString(new ObfuscatedString(new long[]{1542687824358358500L, 97710134092877983L}).toString()));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format2.containsKey(new ObfuscatedString(new long[]{3331603765134930231L, -576938219442339828L, -6781194310735160140L}).toString())) {
                                        hashMap.put(new ObfuscatedString(new long[]{2236391711454428598L, 9055644940153929552L, 4056157732994105854L}).toString(), format2.getString(new ObfuscatedString(new long[]{-8635313519112551221L, -4646059359929623257L, -8155932317837108774L}).toString()));
                                    }
                                }
                            }
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        zzcfpVar.zzd.zzd(new ObfuscatedString(new long[]{33876945049607388L, 6481947999648018442L, 2828515959068770445L}).toString(), hashMap);
                    }
                }
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-6727211944992630577L, -2556520835686055746L, 4076108711726989142L, -6632385359854467421L, 1998631356262194950L}).toString());
            }
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzm = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7438638431660419323L, 7507026696807308241L, 7437996602793345548L, -8632304491014447551L, -6834947966149415174L}).toString());
        zzF(5);
        this.zzh = 5;
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfi(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map map = zzc;
        String str = (String) map.get(Integer.valueOf(i));
        String str2 = (String) map.get(Integer.valueOf(i2));
        zzcec.zzj(new ObfuscatedString(new long[]{-8595731740019222431L, 1762273759144858485L, 614412044231046677L, -1117154972490955975L, -1380500942583517814L, 4090416298033680183L}).toString() + str + new ObfuscatedString(new long[]{2587405057159019312L, 4461469355442004015L}).toString() + str2);
        zzF(-1);
        this.zzh = -1;
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfj(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map map = zzc;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5932341265316210587L, -6439303098427123639L, 2520037091078247625L, -20324286179955525L, -8350640399759713647L, -7939326234413711550L}).toString() + ((String) map.get(Integer.valueOf(i))) + new ObfuscatedString(new long[]{665661389104594302L, 1231047791751785064L}).toString() + ((String) map.get(Integer.valueOf(i2))));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        if (r1 > r6) goto L30;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        int defaultSize = View.getDefaultSize(this.zzk, i);
        int defaultSize2 = View.getDefaultSize(this.zzl, i2);
        if (this.zzk > 0 && this.zzl > 0 && this.zzn == null) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824) {
                if (mode2 == 1073741824) {
                    int i4 = this.zzk;
                    int i5 = i4 * size2;
                    int i6 = this.zzl;
                    int i7 = size * i6;
                    if (i5 < i7) {
                        defaultSize = i5 / i6;
                        defaultSize2 = size2;
                    } else {
                        if (i5 > i7) {
                            defaultSize2 = i7 / i4;
                            defaultSize = size;
                        }
                        defaultSize = size;
                        defaultSize2 = size2;
                    }
                } else {
                    mode = 1073741824;
                }
            }
            if (mode == 1073741824) {
                int i8 = (this.zzl * size) / this.zzk;
                if (mode2 != Integer.MIN_VALUE || i8 <= size2) {
                    defaultSize2 = i8;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i3 = (this.zzk * size2) / this.zzl;
                    if (mode == Integer.MIN_VALUE) {
                    }
                } else {
                    int i9 = this.zzk;
                    int i10 = this.zzl;
                    if (mode2 == Integer.MIN_VALUE && i10 > size2) {
                        i3 = (size2 * i9) / i10;
                    } else {
                        i3 = i9;
                        size2 = i10;
                    }
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize2 = (i10 * size) / i9;
                        defaultSize = size;
                    }
                }
                defaultSize = i3;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        zzcgj zzcgjVar = this.zzn;
        if (zzcgjVar != null) {
            zzcgjVar.zzc(defaultSize, defaultSize2);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8245158896424587898L, -1165253184441144245L, -6949267379147531182L, -6700032143537254663L, -8575179610624638122L}).toString());
        zzF(2);
        this.zze.zzb();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfh(this, mediaPlayer));
        this.zzk = mediaPlayer.getVideoWidth();
        this.zzl = mediaPlayer.getVideoHeight();
        int i = this.zzp;
        if (i != 0) {
            zzq(i);
        }
        if (this.zzf && zzH() && this.zzi.getCurrentPosition() > 0 && this.zzh != 3) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4446037387004811882L, -4386932923514348879L, 4775186216828114631L, -2278874876970769760L, 827527517801718390L, -1049464603873616639L}).toString());
            zzG(0.0f);
            this.zzi.start();
            int currentPosition = this.zzi.getCurrentPosition();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            while (zzH() && this.zzi.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - currentTimeMillis <= 250) {
            }
            this.zzi.pause();
            zzn();
        }
        zzcec.zzi(new ObfuscatedString(new long[]{-747413200597989826L, 480956799235501552L, -3756811595955294619L, -3531669811848529309L, 7303746392483408393L, -3674649271685147080L}).toString() + this.zzk + new ObfuscatedString(new long[]{-8386624689826999788L, 2369823162600287159L}).toString() + this.zzl);
        if (this.zzh == 3) {
            zzp();
        }
        zzn();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6148337713175705782L, -7495327534824783225L, 7411596684215760235L, 245856953926416114L, 9648327360306568L, 8716537239912917869L}).toString());
        zzD();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfk(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5950158828195435424L, 2069882520486036292L, 6561860608126091665L, -6188128045272224881L, -6895578531336859467L, -6039775597749044289L}).toString());
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null && this.zzp == 0) {
            this.zzp = mediaPlayer.getCurrentPosition();
        }
        zzcgj zzcgjVar = this.zzn;
        if (zzcgjVar != null) {
            zzcgjVar.zze();
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfm(this));
        zzE(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7857867430116610519L, -7266598576262779254L, -6402003398546922029L, 3318394913564497988L, -7010942585695321990L, -6505126613034708874L}).toString());
        int i3 = this.zzh;
        boolean z = false;
        if (this.zzk == i && this.zzl == i2) {
            z = true;
        }
        if (this.zzi != null && i3 == 3 && z) {
            int i4 = this.zzp;
            if (i4 != 0) {
                zzq(i4);
            }
            zzp();
        }
        zzcgj zzcgjVar = this.zzn;
        if (zzcgjVar != null) {
            zzcgjVar.zzc(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfl(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zze.zzf(this);
        this.zza.zza(surfaceTexture, this.zzq);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5693557538398641959L, -1758182181716661914L, -6079696629638611674L, 6813500626905540453L, -8868644847908826420L}).toString() + i + new ObfuscatedString(new long[]{-8765153119603679414L, -1194032668417530188L}).toString() + i2);
        this.zzk = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.zzl = videoHeight;
        if (this.zzk != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6261704800003051130L, -4667340506691712200L, 7045359400305266822L, -1572976741971548672L, 5166439418496836783L, -1195264749307852995L, 5932313715995031620L}).toString() + i);
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfg
            @Override // java.lang.Runnable
            public final void run() {
                zzcfp.this.zzm(i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzcfp.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{9027161620596241217L, -547220449704151155L}), AbstractC0749x8313616e.m3341xc20437a5(name), hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final int zza() {
        if (zzH()) {
            return this.zzi.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final int zzb() {
        PersistableBundle metrics;
        if (Build.VERSION.SDK_INT >= 26 && zzH()) {
            metrics = this.zzi.getMetrics();
            return metrics.getInt(new ObfuscatedString(new long[]{-4956280832859735096L, -3335391521043491427L, -6736612207924110251L, 4965120698419805150L, 9139755939938802620L, -8811035044462939715L}).toString());
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final int zzc() {
        if (zzH()) {
            return this.zzi.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final int zzd() {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final int zze() {
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final long zzg() {
        if (this.zzs != null) {
            return (zzh() * this.zzm) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final long zzh() {
        if (this.zzs != null) {
            return zzc() * this.zzs.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final String zzj() {
        return new ObfuscatedString(new long[]{3637649738933119232L, 5044560291949994415L, 7542054007995777872L}).toString().concat(true != this.zzo ? new ObfuscatedString(new long[]{5492759748547664391L}).toString() : new ObfuscatedString(new long[]{-6189027307515193640L, 5879826587233140470L, -1560922455598086623L}).toString());
    }

    public final /* synthetic */ void zzm(int i) {
        zzcfq zzcfqVar = this.zzq;
        if (zzcfqVar != null) {
            zzcfqVar.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfr, com.google.android.gms.internal.ads.zzcgo
    public final void zzn() {
        zzG(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzo() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6277774162654340451L, 3472417147731713794L, 2982454321879913270L, -1410390427527910449L}).toString());
        if (zzH() && this.zzi.isPlaying()) {
            this.zzi.pause();
            zzF(4);
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfo(this));
        }
        this.zzh = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzp() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3723840093431991950L, -901926248799078485L, 5806002443697612502L, 5098248695217336097L}).toString());
        if (zzH()) {
            this.zzi.start();
            zzF(3);
            this.zza.zzb();
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfn(this));
        }
        this.zzh = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzq(int i) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8400785344968410431L, 8283641360528852078L, -3546151746731165905L, -2008636952500525640L}).toString() + i);
        if (zzH()) {
            this.zzi.seekTo(i);
            this.zzp = 0;
        } else {
            this.zzp = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzr(zzcfq zzcfqVar) {
        this.zzq = zzcfqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzs(@Nullable String str) {
        Uri parse = Uri.parse(str);
        zzbbb zza = zzbbb.zza(parse);
        if (zza != null && zza.zza == null) {
            return;
        }
        if (zza != null) {
            parse = Uri.parse(zza.zza);
        }
        this.zzj = parse;
        this.zzp = 0;
        zzD();
        requestLayout();
        invalidate();
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzt() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3844298764161790565L, 5784774828821762646L, -4717846623124146857L, 5644531576171781070L}).toString());
        MediaPlayer mediaPlayer = this.zzi;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzi.release();
            this.zzi = null;
            zzF(0);
            this.zzh = 0;
        }
        this.zze.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcfr
    public final void zzu(float f, float f2) {
        zzcgj zzcgjVar = this.zzn;
        if (zzcgjVar != null) {
            zzcgjVar.zzf(f, f2);
        }
    }
}
