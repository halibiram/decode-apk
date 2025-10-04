package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;
import com.google.android.material.internal.ViewUtils;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.core.VpnProfile;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public final class zzaah extends zzsz implements zzaan {
    private static final int[] zzb = {1920, 1600, 1440, VpnProfile.DEFAULT_MSSFIX_SIZE, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private boolean zzA;
    private boolean zzB;
    private int zzC;

    @Nullable
    private zzaal zzD;

    @Nullable
    private zzabo zzE;
    private final Context zze;
    private final zzabp zzf;
    private final zzabj zzg;
    private final boolean zzh;
    private final zzaao zzi;
    private final zzaam zzj;
    private zzaag zzk;
    private boolean zzl;
    private boolean zzm;

    @Nullable
    private Surface zzn;

    @Nullable
    private zzaak zzo;
    private boolean zzp;
    private int zzq;
    private long zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private long zzv;
    private int zzw;
    private long zzx;
    private zzdp zzy;

    @Nullable
    private zzdp zzz;

    public zzaah(Context context, zzsq zzsqVar, zztb zztbVar, long j, boolean z, @Nullable Handler handler, @Nullable zzabk zzabkVar, int i, float f) {
        super(2, zzsqVar, zztbVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzg = new zzabj(handler, zzabkVar);
        zzzs zzzsVar = new zzzs(applicationContext);
        zzzsVar.zzc(new zzaao(applicationContext, this, 0L));
        zzaab zzd2 = zzzsVar.zzd();
        this.zzf = zzd2;
        this.zzi = zzd2.zza();
        this.zzj = new zzaam();
        this.zzh = new ObfuscatedString(new long[]{-4890384205970618977L, -4262669052029763922L}).toString().equals(zzfy.zzc);
        this.zzq = 1;
        this.zzy = zzdp.zza;
        this.zzC = 0;
        this.zzz = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0794, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-379307042286360347L, 7460051807473083012L}).toString()) != false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0f2e, code lost:
    
        if (r13.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6506085836674835641L, -4825326038215228296L}).toString()) == false) goto L516;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f0 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean zzaM(String str) {
        char c;
        boolean z;
        char c2;
        char c3 = 3;
        if (str.startsWith(new ObfuscatedString(new long[]{6853762930739416343L, 8212888553922830649L, 2427052661994424460L}).toString())) {
            return false;
        }
        synchronized (zzaah.class) {
            if (!zzc) {
                int i = zzfy.zza;
                if (i <= 28) {
                    String str2 = zzfy.zzb;
                    switch (str2.hashCode()) {
                        case -1339091551:
                            if (str2.equals(new ObfuscatedString(new long[]{1496517458960487947L, 8119397944882705017L}).toString())) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1220081023:
                            if (str2.equals(new ObfuscatedString(new long[]{4513380604440625309L, -2536816838057709055L, 5096547324551166564L}).toString())) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1220066608:
                            if (str2.equals(new ObfuscatedString(new long[]{-5136952561646239884L, -3519529084173685619L, -4315540057729540372L}).toString())) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1012436106:
                            if (str2.equals(new ObfuscatedString(new long[]{-7753682556957541817L, 9092897885296565899L}).toString())) {
                                c2 = 7;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -760312546:
                            if (str2.equals(new ObfuscatedString(new long[]{-6783848803393151476L, -414223188515001841L}).toString())) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -64886864:
                            if (str2.equals(new ObfuscatedString(new long[]{683451026879233745L, 3122065223276582504L}).toString())) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 3415681:
                            if (str2.equals(new ObfuscatedString(new long[]{6686063752659560650L, -8506850281644983634L}).toString())) {
                                c2 = 6;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 825323514:
                            if (str2.equals(new ObfuscatedString(new long[]{-5988456665690693939L, -6451494498362018307L}).toString())) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            z = true;
                            break;
                    }
                    zzd = z;
                    zzc = true;
                }
                if (i > 27 || !new ObfuscatedString(new long[]{-2684672387592654285L, -7744224899689805465L}).toString().equals(zzfy.zzb)) {
                    String str3 = zzfy.zzd;
                    switch (str3.hashCode()) {
                        case -349662828:
                            if (str3.equals(new ObfuscatedString(new long[]{6918125085075654640L, 2845923587519576354L, -4968086504800318323L}).toString())) {
                                c = 6;
                                break;
                            }
                            c = 65535;
                            break;
                        case -321033677:
                            if (str3.equals(new ObfuscatedString(new long[]{391726660158304564L, 7071363816522315325L, 2930576072734074956L}).toString())) {
                                c = 7;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006354:
                            if (str3.equals(new ObfuscatedString(new long[]{3134790822484384202L, 1316003552206680124L}).toString())) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006367:
                            if (str3.equals(new ObfuscatedString(new long[]{-7104830273390490786L, 7966853391957144283L}).toString())) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006371:
                            if (str3.equals(new ObfuscatedString(new long[]{-5309728940816598340L, -194649432209156991L}).toString())) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1785421873:
                            if (str3.equals(new ObfuscatedString(new long[]{-8584221661259245509L, -6950315342821091170L}).toString())) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1785421876:
                            if (str3.equals(new ObfuscatedString(new long[]{3187330337927552417L, 4935068308776976218L}).toString())) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1798172390:
                            if (str3.equals(new ObfuscatedString(new long[]{7830679881320819052L, -8445963291841017749L}).toString())) {
                                c = '\b';
                                break;
                            }
                            c = 65535;
                            break;
                        case 2119412532:
                            if (str3.equals(new ObfuscatedString(new long[]{3398475395394535613L, -895692090406403892L, 656595679887484922L}).toString())) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        default:
                            if (i <= 26) {
                                String str4 = zzfy.zzb;
                                switch (str4.hashCode()) {
                                    case -2144781245:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4240823619242789142L, 1828451600088233147L, 7442850288035114485L}).toString())) {
                                            c3 = '6';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -2144781185:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6486178837393966558L, -2394952357086941610L, -3725517790976836201L}).toString())) {
                                            c3 = '7';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -2144781160:
                                        if (str4.equals(new ObfuscatedString(new long[]{1414364046273209032L, 6361513191007837451L, 6865568807011591119L}).toString())) {
                                            c3 = '8';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -2097309513:
                                        if (str4.equals(new ObfuscatedString(new long[]{4595217041316984501L, 1878516694171189495L}).toString())) {
                                            c3 = 'J';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -2022874474:
                                        if (str4.equals(new ObfuscatedString(new long[]{8638188722598081138L, -5762229934794786122L, -2074310266231734724L}).toString())) {
                                            c3 = 22;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1978993182:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5864950520558146555L, 4466725361894376469L}).toString())) {
                                            c3 = 'Y';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1978990237:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7437209943658612882L, -727676119691522120L}).toString())) {
                                            c3 = 'Z';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1936688988:
                                        if (str4.equals(new ObfuscatedString(new long[]{4090992660446435122L, 8479041788158418278L}).toString())) {
                                            c3 = 'e';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1936688066:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5805540268945068507L, 1650912081511098231L}).toString())) {
                                            c3 = 'f';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1936688065:
                                        if (str4.equals(new ObfuscatedString(new long[]{1155272412967217485L, 6154533392486067550L}).toString())) {
                                            c3 = 'g';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1931988508:
                                        if (str4.equals(new ObfuscatedString(new long[]{77191969726170985L, 7785385374356069812L, 4100083945913644979L}).toString())) {
                                            c3 = '\r';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1885099851:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3635038985428443275L, 2934068287921899957L}).toString())) {
                                            c3 = 't';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1696512866:
                                        if (str4.equals(new ObfuscatedString(new long[]{3117035674913284454L, -6269527389136634858L}).toString())) {
                                            c3 = 137;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1680025915:
                                        if (str4.equals(new ObfuscatedString(new long[]{8283695949892333705L, 8047117571342590517L}).toString())) {
                                            c3 = 21;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1615810839:
                                        if (str4.equals(new ObfuscatedString(new long[]{7973594610026487079L, -5426487616210011278L}).toString())) {
                                            c3 = 'h';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1600724499:
                                        if (str4.equals(new ObfuscatedString(new long[]{2129975810153312307L, 4372791687883313142L, -6733121575370184062L}).toString())) {
                                            c3 = '_';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1554255044:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1564243766822924104L, -6403239652604902902L, 471792196693154974L}).toString())) {
                                            c3 = 130;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1481772737:
                                        if (str4.equals(new ObfuscatedString(new long[]{4785420969281950983L, -2499420074630509468L, -3699578512102252359L}).toString())) {
                                            c3 = 'a';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1481772730:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2371927955704445359L, 8898151838250642267L, 1037234622388168739L}).toString())) {
                                            c3 = 'b';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1481772729:
                                        if (str4.equals(new ObfuscatedString(new long[]{5842107475016086416L, -8149014235571916046L, 8516419480621026319L}).toString())) {
                                            c3 = 'c';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1320080169:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7629945372837893311L, 3366691068903844678L, 3258139859289676271L}).toString())) {
                                            c3 = '4';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1217592143:
                                        if (str4.equals(new ObfuscatedString(new long[]{-833850397537007021L, 2150330566040899648L, -3392813309162554852L}).toString())) {
                                            c3 = 18;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1180384755:
                                        if (str4.equals(new ObfuscatedString(new long[]{8206658045844200168L, -956867801622186198L}).toString())) {
                                            c3 = 'F';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1139198265:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7025774063651505106L, -2892306987764316389L, 4156617616910122351L}).toString())) {
                                            c3 = 'v';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -1052835013:
                                        if (str4.equals(new ObfuscatedString(new long[]{6371310056631325168L, 6789683327716483245L}).toString())) {
                                            c3 = 'W';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -993250464:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6272528435089308056L, 8127450903958637949L}).toString())) {
                                            c3 = 5;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -993250458:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2149366505063409155L, -8046811024698881206L}).toString())) {
                                            c3 = 6;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -965403638:
                                        if (str4.equals(new ObfuscatedString(new long[]{-9181135997544851065L, 4339778865659712061L}).toString())) {
                                            c3 = 'x';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -958336948:
                                        if (str4.equals(new ObfuscatedString(new long[]{7564969608018633604L, -318417960016654279L, -5407433459724352180L}).toString())) {
                                            c3 = Typography.quote;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -879245230:
                                        if (str4.equals(new ObfuscatedString(new long[]{-292111155730693622L, -1224647333804009621L}).toString())) {
                                            c3 = '~';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -842500323:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6801116089727901080L, -6689387573384030093L, 3407213812212183173L}).toString())) {
                                            c3 = 'X';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -821392978:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8545216938255082844L, -7943346182173155806L}).toString())) {
                                            c3 = '\t';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -797483286:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6546068302213343066L, 8026008853966721004L, -7085489374843076655L}).toString())) {
                                            c3 = 'w';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -794946968:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1461010542024259908L, -6365156869904241786L}).toString())) {
                                            c3 = 131;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -788334647:
                                        if (str4.equals(new ObfuscatedString(new long[]{5646243401362474050L, -2938881791417674427L}).toString())) {
                                            c3 = 132;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -782144577:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7213048463166622009L, 7687338730046729632L, 4407117613871794543L}).toString())) {
                                            c3 = '[';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -575125681:
                                        if (str4.equals(new ObfuscatedString(new long[]{8221299669001794424L, -6613858577276162301L, 7057288471723864062L}).toString())) {
                                            c3 = '3';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -521118391:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5160717504508255210L, 2306304531776645216L, 8743492520320352440L}).toString())) {
                                            c3 = '5';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -430914369:
                                        if (str4.equals(new ObfuscatedString(new long[]{1112864981013439886L, -4368947592021355976L, -5377403959244992047L}).toString())) {
                                            c3 = 'i';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -290434366:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5636786140170257524L, 2746573372528750111L, -8855820753080420700L}).toString())) {
                                            c3 = 'y';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -282781963:
                                        if (str4.equals(new ObfuscatedString(new long[]{8269199826532222986L, -1000583947540070862L}).toString())) {
                                            c3 = 17;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -277133239:
                                        if (str4.equals(new ObfuscatedString(new long[]{7310999029737583054L, 5588479799532993704L}).toString())) {
                                            c3 = 138;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -173639913:
                                        if (str4.equals(new ObfuscatedString(new long[]{-364032959696980145L, 3362855710173375728L, 6620994185487757475L}).toString())) {
                                            c3 = 31;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -56598463:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5824288961455808492L, 6399971257220435726L}).toString())) {
                                            c3 = 134;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2126:
                                        if (str4.equals(new ObfuscatedString(new long[]{5485514623941019821L, -5891003922768031499L}).toString())) {
                                            c3 = 20;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2564:
                                        if (str4.equals(new ObfuscatedString(new long[]{2956908629259447175L, -5610074078730962516L}).toString())) {
                                            c3 = 'q';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2715:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4020355094529853755L, 8755479907301066392L}).toString())) {
                                            c3 = Ascii.MAX;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2719:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8826106539910601146L, -264051990476770522L}).toString())) {
                                            c3 = 129;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3091:
                                        if (str4.equals(new ObfuscatedString(new long[]{8430555583858750360L, 8506916939887446313L}).toString())) {
                                            c3 = 16;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3483:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5227229698122840126L, -8486955163601869746L}).toString())) {
                                            c3 = 'T';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 73405:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2870744010648248223L, 1016807316812695456L}).toString())) {
                                            c3 = 'I';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 75537:
                                        if (str4.equals(new ObfuscatedString(new long[]{3122847896166626028L, -2906485831953780500L}).toString())) {
                                            c3 = 'O';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 75739:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8555088577175845069L, 3582787933887398136L}).toString())) {
                                            c3 = 'P';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 76779:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1391406430860960549L, 1578104218070203896L}).toString())) {
                                            c3 = 'V';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 78669:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1251340622412153440L, 8382228473803950306L}).toString())) {
                                            c3 = '^';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 79305:
                                        if (str4.equals(new ObfuscatedString(new long[]{7338795923454305696L, 1883912367566868588L}).toString())) {
                                            c3 = 'k';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 80618:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7276961822913523602L, -4862397672635649718L}).toString())) {
                                            c3 = 's';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 88274:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4685668924715811194L, 1177939796145890748L}).toString())) {
                                            c3 = 139;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 98846:
                                        if (str4.equals(new ObfuscatedString(new long[]{4381344812279608491L, -2075555607634857078L}).toString())) {
                                            c3 = 26;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 98848:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2408765678212410884L, 2594782122184885257L}).toString())) {
                                            c3 = 27;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 99329:
                                        if (str4.equals(new ObfuscatedString(new long[]{5169087984493386671L, -7636833464363590041L}).toString())) {
                                            c3 = 28;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 101481:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2890841522456850704L, 1049290586953809546L}).toString())) {
                                            c3 = '1';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1513190:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8722082204546897834L, -8997484091430045682L}).toString())) {
                                            c3 = 0;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1514184:
                                        if (str4.equals(new ObfuscatedString(new long[]{1871797046932434269L, -2716591294807121301L}).toString())) {
                                            c3 = 1;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1514185:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6521725800621543713L, 4022390246539162702L}).toString())) {
                                            c3 = 2;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133089:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5926782492742464414L, -4512263473308890499L}).toString())) {
                                            c3 = Typography.dollar;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133091:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4311202266842341555L, -5652565745764925686L}).toString())) {
                                            c3 = '%';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133120:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5703935481944674397L, 6711718761106053897L}).toString())) {
                                            c3 = Typography.amp;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133151:
                                        if (str4.equals(new ObfuscatedString(new long[]{1862391076649219144L, 1273875066654702639L}).toString())) {
                                            c3 = '\'';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133182:
                                        if (str4.equals(new ObfuscatedString(new long[]{7314019979478694870L, -2510279137045876488L}).toString())) {
                                            c3 = '(';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2133184:
                                        if (str4.equals(new ObfuscatedString(new long[]{2101408105206197079L, 7919184715122606189L}).toString())) {
                                            c3 = ')';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2436959:
                                        if (str4.equals(new ObfuscatedString(new long[]{6356771099371809524L, -8120941070188817291L}).toString())) {
                                            c3 = ']';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2463773:
                                        if (str4.equals(new ObfuscatedString(new long[]{3616314563227945247L, -5663452452568057291L}).toString())) {
                                            c3 = 'm';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2464648:
                                        if (str4.equals(new ObfuscatedString(new long[]{7794474054041914776L, -4190573364473996452L}).toString())) {
                                            c3 = 'o';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2689555:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2097287847040580306L, -8125086910416270890L}).toString())) {
                                            c3 = 136;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3154429:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3298071009715359481L, 2964914522212913821L}).toString())) {
                                            c3 = '2';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3284551:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1754507154784459221L, 8920816619415831751L}).toString())) {
                                            c3 = 'K';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3351335:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4767497545133952536L, -8440000892621801292L}).toString())) {
                                            c3 = 'U';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 3386211:
                                        if (str4.equals(new ObfuscatedString(new long[]{3609752722216021114L, 5649741570424149398L}).toString())) {
                                            c3 = '\\';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 41325051:
                                        if (str4.equals(new ObfuscatedString(new long[]{2671260375283726180L, 2360293872319009826L}).toString())) {
                                            c3 = 'S';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 51349633:
                                        break;
                                    case 51350594:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4004868035796422724L, -2144697725074145971L}).toString())) {
                                            c3 = 4;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 55178625:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4346070200953811616L, 2161705912927676511L, -5783988666189808472L}).toString())) {
                                            c3 = 15;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 61542055:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4817949612427864453L, -715992477061624848L}).toString())) {
                                            c3 = 7;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 65355429:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8151129898307532329L, 259837259876054122L}).toString())) {
                                            c3 = 30;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66214468:
                                        if (str4.equals(new ObfuscatedString(new long[]{1025786921087348817L, 8495743978640575329L}).toString())) {
                                            c3 = '*';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66214470:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1715489445051137696L, -2535589901518766213L}).toString())) {
                                            c3 = '+';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66214473:
                                        if (str4.equals(new ObfuscatedString(new long[]{-5010631534662200855L, -4979740734314571969L}).toString())) {
                                            c3 = ',';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66215429:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7794450013714452207L, -2304769919250879738L}).toString())) {
                                            c3 = '-';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66215431:
                                        if (str4.equals(new ObfuscatedString(new long[]{7096273271499856943L, 1352087698513317790L}).toString())) {
                                            c3 = '.';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66215433:
                                        if (str4.equals(new ObfuscatedString(new long[]{5705508861910465931L, 6400186314855346881L}).toString())) {
                                            c3 = '/';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 66216390:
                                        if (str4.equals(new ObfuscatedString(new long[]{1388158285960519040L, -2510153264986482633L}).toString())) {
                                            c3 = '0';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 76402249:
                                        if (str4.equals(new ObfuscatedString(new long[]{2554822752838937077L, -3444881142663452448L}).toString())) {
                                            c3 = 'l';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 76404105:
                                        if (str4.equals(new ObfuscatedString(new long[]{6338056803380215199L, 7781135190370564313L}).toString())) {
                                            c3 = 'n';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 76404911:
                                        if (str4.equals(new ObfuscatedString(new long[]{2531582031352625960L, -8029624874712030189L}).toString())) {
                                            c3 = 'p';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 80963634:
                                        if (str4.equals(new ObfuscatedString(new long[]{5819623685529103572L, 2710037002194911721L}).toString())) {
                                            c3 = 128;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 82882791:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6935213090101824149L, -981907076608799293L}).toString())) {
                                            c3 = 135;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 98715550:
                                        if (str4.equals(new ObfuscatedString(new long[]{-153325087414082849L, 7380484460432227001L}).toString())) {
                                            c3 = 'C';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 101370885:
                                        if (str4.equals(new ObfuscatedString(new long[]{7766887406492145870L, 9087009943935128321L}).toString())) {
                                            c3 = 'L';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 102844228:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1722505990572437283L, -3185454031356603229L}).toString())) {
                                            c3 = 'M';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 165221241:
                                        if (str4.equals(new ObfuscatedString(new long[]{5489383427241606074L, -3597195607227068385L}).toString())) {
                                            c3 = '\b';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 182191441:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3346853361515868692L, -7229413888179713982L, 2348961532896400027L}).toString())) {
                                            c3 = 25;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 245388979:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8318352792074860507L, 6138103310576809655L}).toString())) {
                                            c3 = 'R';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 287431619:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2509758031196528228L, -8531820371220056365L}).toString())) {
                                            c3 = Typography.less;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 307593612:
                                        if (str4.equals(new ObfuscatedString(new long[]{5236995129700555281L, -4476291435935465720L}).toString())) {
                                            c3 = 11;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 308517133:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8054401324774061077L, -4577274917431910021L}).toString())) {
                                            c3 = '\f';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 316215098:
                                        if (str4.equals(new ObfuscatedString(new long[]{3054208620592143381L, -8557879406217653772L}).toString())) {
                                            c3 = 'z';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 316215116:
                                        if (str4.equals(new ObfuscatedString(new long[]{5445554671838767974L, 8096968111711969495L}).toString())) {
                                            c3 = '{';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 316246811:
                                        if (str4.equals(new ObfuscatedString(new long[]{3494289642791844318L, 1338928757886994421L}).toString())) {
                                            c3 = '|';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 316246818:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7289100676483482124L, -8242944697319377987L}).toString())) {
                                            c3 = '}';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 407160593:
                                        if (str4.equals(new ObfuscatedString(new long[]{2599062714531255939L, 8756188585860632167L, -6078960700459113291L}).toString())) {
                                            c3 = 'j';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 507412548:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2721929602445405330L, -2445510550651308738L}).toString())) {
                                            c3 = 'r';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 793982701:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1278060910162050859L, 522024721111561638L, -8620146657322328259L}).toString())) {
                                            c3 = '9';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 794038622:
                                        if (str4.equals(new ObfuscatedString(new long[]{527848432862444821L, 4271497845325085030L, -2508478956909172607L}).toString())) {
                                            c3 = ':';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 794040393:
                                        if (str4.equals(new ObfuscatedString(new long[]{-6737417561458442064L, -5407697000271482731L, -992463284012475845L}).toString())) {
                                            c3 = ';';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 835649806:
                                        if (str4.equals(new ObfuscatedString(new long[]{3704888568732387342L, -249583502517746277L}).toString())) {
                                            c3 = 'Q';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 917340916:
                                        if (str4.equals(new ObfuscatedString(new long[]{6744080000456715264L, 2346610077119411238L, -4610809173872240153L}).toString())) {
                                            c3 = '\n';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 958008161:
                                        if (str4.equals(new ObfuscatedString(new long[]{-8022149094480076510L, 7915274396765721613L, -8295743092581654016L}).toString())) {
                                            c3 = 'H';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1060579533:
                                        if (str4.equals(new ObfuscatedString(new long[]{4145434414307450000L, -433122866109501349L}).toString())) {
                                            c3 = '`';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1150207623:
                                        if (str4.equals(new ObfuscatedString(new long[]{-2543176972030280934L, 5178944104190194315L}).toString())) {
                                            c3 = 'N';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1176899427:
                                        if (str4.equals(new ObfuscatedString(new long[]{7920428806544174048L, -2779381851110289062L}).toString())) {
                                            c3 = 'G';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1280332038:
                                        if (str4.equals(new ObfuscatedString(new long[]{7305105213611921423L, 2477562395749985685L}).toString())) {
                                            c3 = Typography.greater;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1306947716:
                                        if (str4.equals(new ObfuscatedString(new long[]{-9204933960278278023L, -4369689705258346815L, -8541064326628649145L}).toString())) {
                                            c3 = '#';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1349174697:
                                        if (str4.equals(new ObfuscatedString(new long[]{620976279973336211L, 7004439248123574444L, -7572132396435739702L}).toString())) {
                                            c3 = '=';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1522194893:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3342728851713056819L, -6877832936232940622L}).toString())) {
                                            c3 = 133;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1691543273:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3027432819039747697L, -7079958600777072508L}).toString())) {
                                            c3 = 23;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1691544261:
                                        if (str4.equals(new ObfuscatedString(new long[]{7260548346079000151L, -3580813977552820360L}).toString())) {
                                            c3 = 24;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1709443163:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7962728596711661899L, -7402348906170012199L, 5631171578044010852L}).toString())) {
                                            c3 = 'D';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1865889110:
                                        if (str4.equals(new ObfuscatedString(new long[]{4952313543558351551L, 3725004237841868009L}).toString())) {
                                            c3 = 'u';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1906253259:
                                        if (str4.equals(new ObfuscatedString(new long[]{-4501694390577206404L, -4841876501042276705L}).toString())) {
                                            c3 = 'd';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 1977196784:
                                        if (str4.equals(new ObfuscatedString(new long[]{-1750664745367256598L, 5383562846422567747L, -4429743781777760265L}).toString())) {
                                            c3 = 'E';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2006372676:
                                        if (str4.equals(new ObfuscatedString(new long[]{99597358069912482L, 4053272854316473441L, -8272549038511611621L}).toString())) {
                                            c3 = 19;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2019281702:
                                        if (str4.equals(new ObfuscatedString(new long[]{8600874644882828092L, 9160968982861466225L}).toString())) {
                                            c3 = 29;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2029784656:
                                        if (str4.equals(new ObfuscatedString(new long[]{8722915517791819602L, -350867899597396056L}).toString())) {
                                            c3 = '?';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2030379515:
                                        if (str4.equals(new ObfuscatedString(new long[]{3622755368675506116L, -3880762764452544045L}).toString())) {
                                            c3 = '@';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2033393791:
                                        if (str4.equals(new ObfuscatedString(new long[]{-3197899795672315564L, 2147111362314585808L, 7330718073110823783L}).toString())) {
                                            c3 = 14;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2047190025:
                                        if (str4.equals(new ObfuscatedString(new long[]{5676162121757477286L, 7825748659832239569L, -3735499331793542095L}).toString())) {
                                            c3 = ' ';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2047252157:
                                        if (str4.equals(new ObfuscatedString(new long[]{-7408344157129366184L, -5266148690407813194L, 1607265983913443942L}).toString())) {
                                            c3 = '!';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2048319463:
                                        if (str4.equals(new ObfuscatedString(new long[]{8715387596951825112L, -1217060380172077352L}).toString())) {
                                            c3 = 'A';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case 2048855701:
                                        if (str4.equals(new ObfuscatedString(new long[]{8223939432488840838L, -2639984471411061224L}).toString())) {
                                            c3 = 'B';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    default:
                                        c3 = 65535;
                                        break;
                                }
                                switch (c3) {
                                    default:
                                        if (str3.hashCode() == -594534941) {
                                            break;
                                        }
                                        break;
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case '\b':
                                    case '\t':
                                    case '\n':
                                    case 11:
                                    case '\f':
                                    case '\r':
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                    case 31:
                                    case ' ':
                                    case '!':
                                    case '\"':
                                    case '#':
                                    case '$':
                                    case '%':
                                    case '&':
                                    case '\'':
                                    case '(':
                                    case ')':
                                    case '*':
                                    case '+':
                                    case ',':
                                    case '-':
                                    case '.':
                                    case '/':
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                    case ':':
                                    case ';':
                                    case '<':
                                    case '=':
                                    case '>':
                                    case '?':
                                    case '@':
                                    case 'A':
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                    case 'E':
                                    case 'F':
                                    case 'G':
                                    case 'H':
                                    case 'I':
                                    case 'J':
                                    case 'K':
                                    case 'L':
                                    case 'M':
                                    case 'N':
                                    case 'O':
                                    case 'P':
                                    case 'Q':
                                    case 'R':
                                    case 'S':
                                    case 'T':
                                    case 'U':
                                    case 'V':
                                    case 'W':
                                    case 'X':
                                    case 'Y':
                                    case 'Z':
                                    case '[':
                                    case '\\':
                                    case ']':
                                    case '^':
                                    case '_':
                                    case '`':
                                    case 'a':
                                    case 'b':
                                    case 'c':
                                    case 'd':
                                    case 'e':
                                    case 'f':
                                    case 'g':
                                    case 'h':
                                    case 'i':
                                    case 'j':
                                    case 'k':
                                    case 'l':
                                    case 'm':
                                    case 'n':
                                    case 'o':
                                    case 'p':
                                    case 'q':
                                    case 'r':
                                    case 's':
                                    case 't':
                                    case 'u':
                                    case 'v':
                                    case 'w':
                                    case 'x':
                                    case 'y':
                                    case 'z':
                                    case '{':
                                    case '|':
                                    case '}':
                                    case '~':
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        break;
                                }
                            }
                            z = false;
                            break;
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case '\b':
                            break;
                    }
                    zzd = z;
                    zzc = true;
                }
                z = true;
                zzd = z;
                zzc = true;
            }
        }
        return zzd;
    }

    private static List zzaN(Context context, zztb zztbVar, zzam zzamVar, boolean z, boolean z2) {
        String str = zzamVar.zzm;
        if (str == null) {
            return zzgaa.zzl();
        }
        if (zzfy.zza >= 26 && new ObfuscatedString(new long[]{-1898369961389275661L, 8933442563111911508L, 8011807562296542036L, -565640718774506663L}).toString().equals(str) && !zzaaf.zza(context)) {
            List zzd2 = zztn.zzd(zztbVar, zzamVar, z, z2);
            if (!zzd2.isEmpty()) {
                return zzd2;
            }
        }
        return zztn.zzf(zztbVar, zzamVar, z, z2);
    }

    private final void zzaO() {
        zzdp zzdpVar = this.zzz;
        if (zzdpVar != null) {
            this.zzg.zzt(zzdpVar);
        }
    }

    @RequiresApi(17)
    private final void zzaP() {
        Surface surface = this.zzn;
        zzaak zzaakVar = this.zzo;
        if (surface == zzaakVar) {
            this.zzn = null;
        }
        if (zzaakVar != null) {
            zzaakVar.release();
            this.zzo = null;
        }
    }

    private final boolean zzaQ(zzsv zzsvVar) {
        if (zzfy.zza < 23 || zzaM(zzsvVar.zza)) {
            return false;
        }
        if (zzsvVar.zzf && !zzaak.zzb(this.zze)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b9, code lost:
    
        if (r6.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8138164729221278434L, -3601551501880101375L, 3678624034515372127L}).toString()) != false) goto L40;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x00ff. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zzac(zzsv zzsvVar, zzam zzamVar) {
        int intValue;
        int i = 4;
        int i2 = zzamVar.zzr;
        int i3 = zzamVar.zzs;
        if (i2 != -1 && i3 != -1) {
            String str = zzamVar.zzm;
            str.getClass();
            char c = 1;
            if (new ObfuscatedString(new long[]{-2019498648738502055L, -2359030620719672438L, -7662889721005744844L, -7582015442075484438L}).toString().equals(str)) {
                Pair zza = zztn.zza(zzamVar);
                str = new ObfuscatedString(new long[]{8151044858151927103L, -256778231041703957L, -1525002506142919433L}).toString();
                if (zza != null && ((intValue = ((Integer) zza.first).intValue()) == 512 || intValue == 1 || intValue == 2)) {
                    str = new ObfuscatedString(new long[]{-6822167510180085767L, 6540947254842615629L, -2328713580721454243L}).toString();
                }
            }
            switch (str.hashCode()) {
                case -1664118616:
                    if (str.equals(new ObfuscatedString(new long[]{8219965337569880672L, 7714491650460624349L, 7006495911149534910L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1662735862:
                    if (str.equals(new ObfuscatedString(new long[]{-762580572626765596L, -3375768364746311665L, -1016028584002880506L}).toString())) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1662541442:
                    if (str.equals(new ObfuscatedString(new long[]{-5873375279782988124L, 1615915819311400056L, 8999133515405372172L}).toString())) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1187890754:
                    break;
                case 1331836730:
                    if (str.equals(new ObfuscatedString(new long[]{8772366471884420563L, 7629129283132490206L, 1786953689092134771L}).toString())) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1599127256:
                    if (str.equals(new ObfuscatedString(new long[]{9204998289198977207L, -8903390880370947599L, 8101541387659148981L, -6988520603421765657L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1599127257:
                    if (str.equals(new ObfuscatedString(new long[]{9151084618165523567L, 4745799657862455315L, 6672351243460086253L, -2709267595447059182L}).toString())) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                    return ((i2 * i3) * 3) / i;
                case 4:
                    return Math.max(2097152, ((i2 * i3) * 3) / 4);
                case 5:
                    String obfuscatedString = new ObfuscatedString(new long[]{-8157644716786384209L, 2436641602051109320L, 199793882562820925L}).toString();
                    String str2 = zzfy.zzd;
                    if (!obfuscatedString.equals(str2) && (!new ObfuscatedString(new long[]{6637071607886814688L, 3885726174865595733L}).toString().equals(zzfy.zzc) || (!new ObfuscatedString(new long[]{4546405473312680311L, -1323681625516055039L}).toString().equals(str2) && (!new ObfuscatedString(new long[]{3480830760536836156L, 2741429912726325190L}).toString().equals(str2) || !zzsvVar.zzf)))) {
                        return ((((i3 + 15) / 16) * ((i2 + 15) / 16)) * ViewUtils.EDGE_TO_EDGE_FLAGS) / 4;
                    }
                    break;
                case 6:
                    i = 8;
                    return ((i2 * i3) * 3) / i;
            }
        }
        return -1;
    }

    public static int zzad(zzsv zzsvVar, zzam zzamVar) {
        if (zzamVar.zzn != -1) {
            int size = zzamVar.zzo.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += ((byte[]) zzamVar.zzo.get(i2)).length;
            }
            return zzamVar.zzn + i;
        }
        return zzac(zzsvVar, zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzA() {
        if (this.zzf.zzk()) {
            this.zzf.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    @TargetApi(17)
    public final void zzB() {
        try {
            super.zzB();
            this.zzB = false;
            if (this.zzo != null) {
                zzaP();
            }
        } catch (Throwable th) {
            this.zzB = false;
            if (this.zzo != null) {
                zzaP();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzC() {
        this.zzs = 0;
        zzh();
        this.zzr = SystemClock.elapsedRealtime();
        this.zzv = 0L;
        this.zzw = 0;
        this.zzi.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzD() {
        if (this.zzs > 0) {
            zzh();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzg.zzd(this.zzs, elapsedRealtime - this.zzr);
            this.zzs = 0;
            this.zzr = elapsedRealtime;
        }
        int i = this.zzw;
        if (i != 0) {
            this.zzg.zzr(this.zzv, i);
            this.zzv = 0L;
            this.zzw = 0;
        }
        this.zzi.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzmf
    public final void zzL(float f, float f2) {
        super.zzL(f, f2);
        this.zzi.zzn(f);
        if (this.zzE == null) {
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmf, com.google.android.gms.internal.ads.zzmh
    public final String zzT() {
        return new ObfuscatedString(new long[]{-745246563923273034L, -3224173820202938283L, -7645231453046224034L, 4270810839161621327L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzmf
    @CallSuper
    public final void zzU(long j, long j2) {
        super.zzU(j, j2);
        if (this.zzE == null) {
            return;
        }
        try {
            throw null;
        } catch (zzabn e) {
            throw zzi(e, e.zza, false, 7001);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzmf
    public final boolean zzV() {
        if (super.zzV()) {
            if (this.zzE == null) {
                return true;
            }
            throw null;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzmf
    public final boolean zzW() {
        boolean z;
        zzaak zzaakVar;
        if (super.zzW()) {
            if (this.zzE == null) {
                z = true;
            } else {
                throw null;
            }
        } else {
            z = false;
        }
        if (z && (((zzaakVar = this.zzo) != null && this.zzn == zzaakVar) || zzau() == null)) {
            return true;
        }
        return this.zzi.zzo(z);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final float zzY(float f, zzam zzamVar, zzam[] zzamVarArr) {
        float f2 = -1.0f;
        for (zzam zzamVar2 : zzamVarArr) {
            float f3 = zzamVar2.zzt;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final int zzZ(zztb zztbVar, zzam zzamVar) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4 = 1;
        int i5 = 128;
        if (!zzcb.zzh(zzamVar.zzm)) {
            return 128;
        }
        int i6 = 0;
        if (zzamVar.zzp != null) {
            z = true;
        } else {
            z = false;
        }
        List zzaN = zzaN(this.zze, zztbVar, zzamVar, z, false);
        if (z && zzaN.isEmpty()) {
            zzaN = zzaN(this.zze, zztbVar, zzamVar, false, false);
        }
        if (!zzaN.isEmpty()) {
            if (!zzsz.zzaJ(zzamVar)) {
                i4 = 2;
            } else {
                zzsv zzsvVar = (zzsv) zzaN.get(0);
                boolean zze = zzsvVar.zze(zzamVar);
                if (!zze) {
                    for (int i7 = 1; i7 < zzaN.size(); i7++) {
                        zzsv zzsvVar2 = (zzsv) zzaN.get(i7);
                        if (zzsvVar2.zze(zzamVar)) {
                            zzsvVar = zzsvVar2;
                            z2 = false;
                            zze = true;
                            break;
                        }
                    }
                }
                z2 = true;
                if (true != zze) {
                    i = 3;
                } else {
                    i = 4;
                }
                if (true != zzsvVar.zzf(zzamVar)) {
                    i2 = 8;
                } else {
                    i2 = 16;
                }
                if (true != zzsvVar.zzg) {
                    i3 = 0;
                } else {
                    i3 = 64;
                }
                if (true != z2) {
                    i5 = 0;
                }
                if (zzfy.zza >= 26) {
                    if (new ObfuscatedString(new long[]{7377463738978301449L, -4170360278269273265L, 4863868998467356019L, 3429794554480948346L}).toString().equals(zzamVar.zzm) && !zzaaf.zza(this.zze)) {
                        i5 = 256;
                    }
                }
                if (zze) {
                    List zzaN2 = zzaN(this.zze, zztbVar, zzamVar, z, true);
                    if (!zzaN2.isEmpty()) {
                        zzsv zzsvVar3 = (zzsv) zztn.zzg(zzaN2, zzamVar).get(0);
                        if (zzsvVar3.zze(zzamVar) && zzsvVar3.zzf(zzamVar)) {
                            i6 = 32;
                        }
                    }
                }
                return i | i2 | i6 | i3 | i5;
            }
        }
        return i4 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final boolean zza(long j, long j2, boolean z) {
        return j < -30000 && !z;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @CallSuper
    public final void zzaA(zzam zzamVar) {
        if (this.zzA && !this.zzB && !this.zzf.zzk()) {
            try {
                this.zzf.zzd(zzamVar);
                this.zzf.zzh(zzas());
                zzaal zzaalVar = this.zzD;
                if (zzaalVar != null) {
                    this.zzf.zzj(zzaalVar);
                }
            } catch (zzabn e) {
                throw zzi(e, zzamVar, false, 7000);
            }
        }
        if (this.zzE == null && this.zzf.zzk()) {
            this.zzE = this.zzf.zzb();
            zzgfe.zzb();
            throw null;
        }
        this.zzB = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @CallSuper
    public final void zzaC() {
        super.zzaC();
        this.zzu = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final boolean zzaI(zzsv zzsvVar) {
        if (this.zzn == null && !zzaQ(zzsvVar)) {
            return false;
        }
        return true;
    }

    public final void zzaK(int i, int i2) {
        zzir zzirVar = ((zzsz) this).zza;
        zzirVar.zzh += i;
        int i3 = i + i2;
        zzirVar.zzg += i3;
        this.zzs += i3;
        int i4 = this.zzt + i3;
        this.zzt = i4;
        zzirVar.zzi = Math.max(i4, zzirVar.zzi);
    }

    public final void zzaL(long j) {
        zzir zzirVar = ((zzsz) this).zza;
        zzirVar.zzk += j;
        zzirVar.zzl++;
        this.zzv += j;
        this.zzw++;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final zzis zzaa(zzsv zzsvVar, zzam zzamVar, zzam zzamVar2) {
        int i;
        int i2;
        zzis zzb2 = zzsvVar.zzb(zzamVar, zzamVar2);
        int i3 = zzb2.zze;
        zzaag zzaagVar = this.zzk;
        zzaagVar.getClass();
        if (zzamVar2.zzr > zzaagVar.zza || zzamVar2.zzs > zzaagVar.zzb) {
            i3 |= 256;
        }
        if (zzad(zzsvVar, zzamVar2) > zzaagVar.zzc) {
            i3 |= 64;
        }
        String str = zzsvVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzb2.zzd;
            i2 = 0;
        }
        return new zzis(str, zzamVar, zzamVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @Nullable
    public final zzis zzab(zzlb zzlbVar) {
        zzis zzab = super.zzab(zzlbVar);
        zzam zzamVar = zzlbVar.zza;
        zzamVar.getClass();
        this.zzg.zzf(zzamVar, zzab);
        return zzab;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0341  */
    @Override // com.google.android.gms.internal.ads.zzsz
    @TargetApi(17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzsp zzae(zzsv zzsvVar, zzam zzamVar, @Nullable MediaCrypto mediaCrypto, float f) {
        boolean z;
        int i;
        Point point;
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        Pair zza;
        int zzac;
        zzaak zzaakVar = this.zzo;
        if (zzaakVar != null) {
            if (zzaakVar.zza != zzsvVar.zzf) {
                zzaP();
            }
        }
        String str = zzsvVar.zzc;
        zzam[] zzS = zzS();
        int i7 = zzamVar.zzr;
        int i8 = zzamVar.zzs;
        int zzad = zzad(zzsvVar, zzamVar);
        int length = zzS.length;
        if (length == 1) {
            if (zzad != -1 && (zzac = zzac(zzsvVar, zzamVar)) != -1) {
                zzad = Math.min((int) (zzad * 1.5f), zzac);
            }
        } else {
            boolean z3 = false;
            for (int i9 = 0; i9 < length; i9++) {
                zzam zzamVar2 = zzS[i9];
                if (zzamVar.zzy != null && zzamVar2.zzy == null) {
                    zzak zzb2 = zzamVar2.zzb();
                    zzb2.zzA(zzamVar.zzy);
                    zzamVar2 = zzb2.zzac();
                }
                if (zzsvVar.zzb(zzamVar, zzamVar2).zzd != 0) {
                    int i10 = zzamVar2.zzr;
                    if (i10 == -1 || zzamVar2.zzs == -1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int max = Math.max(i7, i10);
                    int max2 = Math.max(i8, zzamVar2.zzs);
                    z3 |= z2;
                    zzad = Math.max(zzad, zzad(zzsvVar, zzamVar2));
                    i8 = max2;
                    i7 = max;
                }
            }
            if (z3) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-4448283183867276001L, -266345562164367210L, 6178319279204007020L, -4683075429061143924L, 3431935274270431159L, 4217000988085138342L, -1759281315092772278L}).toString());
                sb.append(i7);
                zzff.zzf(new ObfuscatedString(new long[]{-2550115594144743091L, -6142503984309318103L, -905574782710266376L, -7591030802409537054L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2832634391630133163L, 6807741227523090284L}), sb, i8));
                int i11 = zzamVar.zzs;
                int i12 = zzamVar.zzr;
                if (i11 > i12) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i = i11;
                } else {
                    i = i12;
                }
                if (true == z) {
                    i11 = i12;
                }
                int[] iArr = zzb;
                int i13 = 0;
                while (i13 < 9) {
                    float f2 = i11;
                    float f3 = i;
                    int i14 = iArr[i13];
                    int[] iArr2 = iArr;
                    float f4 = i14;
                    if (i14 <= i || (i2 = (int) ((f2 / f3) * f4)) <= i11) {
                        break;
                    }
                    int i15 = zzfy.zza;
                    if (true != z) {
                        i3 = i14;
                    } else {
                        i3 = i2;
                    }
                    if (true != z) {
                        i14 = i2;
                    }
                    point = zzsvVar.zza(i3, i14);
                    float f5 = zzamVar.zzt;
                    if (point != null) {
                        i4 = i11;
                        if (zzsvVar.zzg(point.x, point.y, f5)) {
                            break;
                        }
                    } else {
                        i4 = i11;
                    }
                    i13++;
                    iArr = iArr2;
                    i11 = i4;
                }
                point = null;
                if (point != null) {
                    i7 = Math.max(i7, point.x);
                    i8 = Math.max(i8, point.y);
                    zzak zzb3 = zzamVar.zzb();
                    zzb3.zzab(i7);
                    zzb3.zzI(i8);
                    zzad = Math.max(zzad, zzac(zzsvVar, zzb3.zzac()));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-4121063518978867291L, 1628288488925454480L, -2952302819833460523L, -7746853026160468616L, 2564031718634898979L, -6447486323712155525L}).toString());
                    sb2.append(i7);
                    zzff.zzf(new ObfuscatedString(new long[]{4082224304412459761L, 3181743122402816180L, -3040767903686495456L, 6108298138025874494L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{4147059552257099946L, -2038280367410867572L}), sb2, i8));
                }
            }
        }
        zzaag zzaagVar = new zzaag(i7, i8, zzad);
        this.zzk = zzaagVar;
        boolean z4 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(new ObfuscatedString(new long[]{5441605798710210995L, 2628408892556357712L}).toString(), str);
        mediaFormat.setInteger(new ObfuscatedString(new long[]{-5812105843639702170L, 2374275186245633338L}).toString(), zzamVar.zzr);
        mediaFormat.setInteger(new ObfuscatedString(new long[]{-8707006204892220318L, 8946112722586525483L}).toString(), zzamVar.zzs);
        zzfi.zzb(mediaFormat, zzamVar.zzo);
        float f6 = zzamVar.zzt;
        if (f6 != -1.0f) {
            i5 = 3;
            mediaFormat.setFloat(new ObfuscatedString(new long[]{7606164281732206094L, 2168396631598166271L, 8476328556579098005L}).toString(), f6);
        } else {
            i5 = 3;
        }
        long[] jArr = new long[i5];
        // fill-array-data instruction
        jArr[0] = -8909281348304919012L;
        jArr[1] = -1409759360936973553L;
        jArr[2] = -746076040810152843L;
        zzfi.zza(mediaFormat, new ObfuscatedString(jArr).toString(), zzamVar.zzu);
        zzt zztVar = zzamVar.zzy;
        if (zztVar != null) {
            long[] jArr2 = new long[i5];
            // fill-array-data instruction
            jArr2[0] = -4032696906383213292L;
            jArr2[1] = 3138666562250270343L;
            jArr2[2] = -3208798617236184598L;
            zzfi.zza(mediaFormat, new ObfuscatedString(jArr2).toString(), zztVar.zzf);
            long[] jArr3 = new long[i5];
            // fill-array-data instruction
            jArr3[0] = 6416589120404896352L;
            jArr3[1] = -357177531065097811L;
            jArr3[2] = 5899411044726745184L;
            zzfi.zza(mediaFormat, new ObfuscatedString(jArr3).toString(), zztVar.zzd);
            long[] jArr4 = new long[i5];
            // fill-array-data instruction
            jArr4[0] = -7079159011270129965L;
            jArr4[1] = 8465402381749607081L;
            jArr4[2] = 598171360380685101L;
            zzfi.zza(mediaFormat, new ObfuscatedString(jArr4).toString(), zztVar.zze);
            byte[] bArr = zztVar.zzg;
            if (bArr != null) {
                long[] jArr5 = new long[i5];
                // fill-array-data instruction
                jArr5[0] = -3178192982658357758L;
                jArr5[1] = -2735254839905884212L;
                jArr5[2] = 1224398520073777969L;
                mediaFormat.setByteBuffer(new ObfuscatedString(jArr5).toString(), ByteBuffer.wrap(bArr));
            }
        }
        if (new ObfuscatedString(new long[]{9097375723230547102L, 5888587565966568918L, 8180034373152639639L, -5624601686439198397L}).toString().equals(zzamVar.zzm) && (zza = zztn.zza(zzamVar)) != null) {
            zzfi.zza(mediaFormat, new ObfuscatedString(new long[]{182925006732996392L, 3691900865353962684L}).toString(), ((Integer) zza.first).intValue());
        }
        mediaFormat.setInteger(new ObfuscatedString(new long[]{-2694714861246545113L, -7493392643385368682L, 3748338491760809789L}).toString(), zzaagVar.zza);
        mediaFormat.setInteger(new ObfuscatedString(new long[]{-8050058053625401586L, 5585229485656531434L, 7751249069834324511L}).toString(), zzaagVar.zzb);
        zzfi.zza(mediaFormat, new ObfuscatedString(new long[]{-8435761516164363986L, -2694151932566979644L, 1889470697239409585L}).toString(), zzaagVar.zzc);
        if (zzfy.zza >= 23) {
            mediaFormat.setInteger(new ObfuscatedString(new long[]{2848611314124087686L, -3933423207032160706L}).toString(), 0);
            if (f != -1.0f) {
                i6 = 3;
                mediaFormat.setFloat(new ObfuscatedString(new long[]{5579141479465137828L, -3369320130428303005L, -8343708529356928495L}).toString(), f);
                if (z4) {
                    long[] jArr6 = new long[i6];
                    // fill-array-data instruction
                    jArr6[0] = -6049073117533020272L;
                    jArr6[1] = -7422578334743368648L;
                    jArr6[2] = 1994656022204995770L;
                    mediaFormat.setInteger(new ObfuscatedString(jArr6).toString(), 1);
                    mediaFormat.setInteger(new ObfuscatedString(new long[]{5901695418357024550L, -4250670896465187113L}).toString(), 0);
                }
                if (this.zzn == null) {
                    if (zzaQ(zzsvVar)) {
                        if (this.zzo == null) {
                            this.zzo = zzaak.zza(this.zze, zzsvVar.zzf);
                        }
                        this.zzn = this.zzo;
                    } else {
                        throw new IllegalStateException();
                    }
                }
                if (this.zzE != null) {
                    return zzsp.zzb(zzsvVar, mediaFormat, zzamVar, this.zzn, null);
                }
                throw null;
            }
        }
        i6 = 3;
        if (z4) {
        }
        if (this.zzn == null) {
        }
        if (this.zzE != null) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final List zzaf(zztb zztbVar, zzam zzamVar, boolean z) {
        return zztn.zzg(zzaN(this.zze, zztbVar, zzamVar, false, false), zzamVar);
    }

    @RequiresApi(21)
    public final void zzag(zzsr zzsrVar, int i, long j, long j2) {
        Surface surface;
        int i2 = zzfy.zza;
        Trace.beginSection(new ObfuscatedString(new long[]{-1991437105907069332L, -5810228715761423930L, 7025108310801863977L, 3370284179777733372L}).toString());
        zzsrVar.zzm(i, j2);
        Trace.endSection();
        ((zzsz) this).zza.zze++;
        this.zzt = 0;
        if (this.zzE == null) {
            zzdp zzdpVar = this.zzy;
            if (!zzdpVar.equals(zzdp.zza) && !zzdpVar.equals(this.zzz)) {
                this.zzz = zzdpVar;
                this.zzg.zzt(zzdpVar);
            }
            if (this.zzi.zzp() && (surface = this.zzn) != null) {
                this.zzg.zzq(surface);
                this.zzp = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @TargetApi(29)
    public final void zzah(zzih zzihVar) {
        if (this.zzm) {
            ByteBuffer byteBuffer = zzihVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsr zzau = zzau();
                        zzau.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray(new ObfuscatedString(new long[]{-7978385999747749537L, 8498794947111257541L, -6486175680134635777L}).toString(), bArr);
                        zzau.zzp(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzai(Exception exc) {
        zzff.zzd(new ObfuscatedString(new long[]{5746948376294364225L, 1064852312718710299L, 5449685473472276027L, -7550039055882871996L}).toString(), new ObfuscatedString(new long[]{-4285869211310414575L, -8552682563785932563L, 3172570154187021531L, -4305947935512667743L}).toString(), exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzaj(String str, zzsp zzspVar, long j, long j2) {
        boolean z = true;
        this.zzg.zza(str, j, j2);
        this.zzl = zzaM(str);
        zzsv zzaw = zzaw();
        zzaw.getClass();
        if (zzfy.zza >= 29) {
            if (new ObfuscatedString(new long[]{-3866664724141275982L, 674789368902976699L, -4136247289501087444L, 698301568760977422L}).toString().equals(zzaw.zzb)) {
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzaw.zzh()) {
                    if (codecProfileLevel.profile == 16384) {
                        break;
                    }
                }
            }
        }
        z = false;
        this.zzm = z;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzak(String str) {
        this.zzg.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzal(zzam zzamVar, @Nullable MediaFormat mediaFormat) {
        boolean z;
        int integer;
        int integer2;
        zzsr zzau = zzau();
        if (zzau != null) {
            zzau.zzq(this.zzq);
        }
        mediaFormat.getClass();
        if (mediaFormat.containsKey(new ObfuscatedString(new long[]{7068421151103495841L, -4629082819817184997L, -9036318828128234926L}).toString()) && mediaFormat.containsKey(new ObfuscatedString(new long[]{-6160360740409641118L, -2805931042550754270L, -2647711304012170188L}).toString()) && mediaFormat.containsKey(new ObfuscatedString(new long[]{721754551976257839L, 202790023048167691L, 6188703757131960695L}).toString()) && mediaFormat.containsKey(new ObfuscatedString(new long[]{-5779893188450752315L, -8367286843368963204L}).toString())) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            integer = (mediaFormat.getInteger(new ObfuscatedString(new long[]{-3655981262256443887L, 5588788748835014605L, 4098979798282111039L}).toString()) - mediaFormat.getInteger(new ObfuscatedString(new long[]{5818030733700552505L, 7981278880716095306L, -5966681891006496284L}).toString())) + 1;
        } else {
            integer = mediaFormat.getInteger(new ObfuscatedString(new long[]{1942260921365370952L, -7987822919264754235L}).toString());
        }
        if (z) {
            integer2 = (mediaFormat.getInteger(new ObfuscatedString(new long[]{-7590714765772798715L, 1995560223080812509L, 1836576063105190814L}).toString()) - mediaFormat.getInteger(new ObfuscatedString(new long[]{6145197248991435062L, 794266922843766221L}).toString())) + 1;
        } else {
            integer2 = mediaFormat.getInteger(new ObfuscatedString(new long[]{-3762331339910112024L, -1666897574742974661L}).toString());
        }
        float f = zzamVar.zzv;
        int i = zzfy.zza;
        int i2 = zzamVar.zzu;
        if (i2 == 90 || i2 == 270) {
            f = 1.0f / f;
            int i3 = integer;
            integer = integer2;
            integer2 = i3;
        }
        this.zzy = new zzdp(integer, integer2, 0, f);
        this.zzi.zzl(zzamVar.zzt);
        if (this.zzE == null) {
            return;
        }
        zzak zzb2 = zzamVar.zzb();
        zzb2.zzab(integer);
        zzb2.zzI(integer2);
        zzb2.zzV(0);
        zzb2.zzS(f);
        zzb2.zzac();
        throw null;
    }

    public final void zzam(zzsr zzsrVar, int i, long j) {
        int i2 = zzfy.zza;
        Trace.beginSection(new ObfuscatedString(new long[]{2381299043248981621L, 1179128552890892386L, -7542377189088735666L}).toString());
        zzsrVar.zzn(i, false);
        Trace.endSection();
        ((zzsz) this).zza.zzf++;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzan() {
        this.zzi.zzf();
        int i = zzfy.zza;
        if (this.zzf.zzk()) {
            this.zzf.zzh(zzas());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final boolean zzap(long j, long j2, @Nullable zzsr zzsrVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzam zzamVar) {
        zzsrVar.getClass();
        long zzas = j3 - zzas();
        int zza = this.zzi.zza(j3, j, j2, zzat(), z2, this.zzj);
        if (z && !z2) {
            zzam(zzsrVar, i, zzas);
            return true;
        }
        if (this.zzn == this.zzo) {
            if (this.zzj.zzc() < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                zzam(zzsrVar, i, zzas);
                zzaL(this.zzj.zzc());
                return true;
            }
        } else if (this.zzE == null) {
            if (zza != 0) {
                if (zza != 1) {
                    if (zza != 2) {
                        if (zza == 3) {
                            zzam(zzsrVar, i, zzas);
                            zzaL(this.zzj.zzc());
                            return true;
                        }
                    } else {
                        int i4 = zzfy.zza;
                        Trace.beginSection(new ObfuscatedString(new long[]{-7515698180585494066L, 4453756630078153646L, 4889421435924596078L}).toString());
                        zzsrVar.zzn(i, false);
                        Trace.endSection();
                        zzaK(0, 1);
                        zzaL(this.zzj.zzc());
                        return true;
                    }
                } else {
                    zzaam zzaamVar = this.zzj;
                    long zzd2 = zzaamVar.zzd();
                    long zzc2 = zzaamVar.zzc();
                    int i5 = zzfy.zza;
                    if (zzd2 == this.zzx) {
                        zzam(zzsrVar, i, zzas);
                    } else {
                        zzag(zzsrVar, i, zzas, zzd2);
                    }
                    zzaL(zzc2);
                    this.zzx = zzd2;
                    return true;
                }
            } else {
                zzh();
                long nanoTime = System.nanoTime();
                int i6 = zzfy.zza;
                zzag(zzsrVar, i, zzas, nanoTime);
                zzaL(this.zzj.zzc());
                return true;
            }
        } else {
            try {
                throw null;
            } catch (zzabn e) {
                throw zzi(e, e.zza, false, 7001);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final int zzar(zzih zzihVar) {
        int i = zzfy.zza;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final zzst zzav(Throwable th, @Nullable zzsv zzsvVar) {
        return new zzaae(th, zzsvVar, this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @CallSuper
    public final void zzay(long j) {
        super.zzay(j);
        this.zzu--;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @CallSuper
    public final void zzaz(zzih zzihVar) {
        this.zzu++;
        int i = zzfy.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final boolean zzb(long j, long j2) {
        return j < -30000 && j2 > 100000;
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final boolean zzc(long j, long j2, long j3, boolean z, boolean z2) {
        int zzd2;
        if (j < -500000 && !z && (zzd2 = zzd(j2)) != 0) {
            if (z2) {
                zzir zzirVar = ((zzsz) this).zza;
                zzirVar.zzd += zzd2;
                zzirVar.zzf += this.zzu;
            } else {
                ((zzsz) this).zza.zzj++;
                zzaK(zzd2, this.zzu);
            }
            zzaE();
            if (this.zzE == null) {
                return true;
            }
            throw null;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzmf
    public final void zzs() {
        this.zzi.zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [android.view.Surface] */
    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzma
    public final void zzt(int i, @Nullable Object obj) {
        zzaak zzaakVar;
        Surface surface;
        if (i != 1) {
            if (i != 7) {
                if (i != 10) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 13) {
                                if (i == 14) {
                                    obj.getClass();
                                    zzfq zzfqVar = (zzfq) obj;
                                    if (zzfqVar.zzb() != 0 && zzfqVar.zza() != 0 && (surface = this.zzn) != null) {
                                        this.zzf.zzg(surface, zzfqVar);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            obj.getClass();
                            this.zzf.zzi((List) obj);
                            this.zzA = true;
                            return;
                        }
                        zzaao zzaaoVar = this.zzi;
                        obj.getClass();
                        zzaaoVar.zzj(((Integer) obj).intValue());
                        return;
                    }
                    obj.getClass();
                    int intValue = ((Integer) obj).intValue();
                    this.zzq = intValue;
                    zzsr zzau = zzau();
                    if (zzau != null) {
                        zzau.zzq(intValue);
                        return;
                    }
                    return;
                }
                obj.getClass();
                int intValue2 = ((Integer) obj).intValue();
                if (this.zzC != intValue2) {
                    this.zzC = intValue2;
                    return;
                }
                return;
            }
            obj.getClass();
            zzaal zzaalVar = (zzaal) obj;
            this.zzD = zzaalVar;
            this.zzf.zzj(zzaalVar);
            return;
        }
        if (obj instanceof Surface) {
            zzaakVar = (Surface) obj;
        } else {
            zzaakVar = null;
        }
        if (zzaakVar == null) {
            zzaak zzaakVar2 = this.zzo;
            if (zzaakVar2 != null) {
                zzaakVar = zzaakVar2;
            } else {
                zzsv zzaw = zzaw();
                if (zzaw != null && zzaQ(zzaw)) {
                    zzaakVar = zzaak.zza(this.zze, zzaw.zzf);
                    this.zzo = zzaakVar;
                }
            }
        }
        if (this.zzn != zzaakVar) {
            this.zzn = zzaakVar;
            this.zzi.zzm(zzaakVar);
            this.zzp = false;
            int zzbf = zzbf();
            zzsr zzau2 = zzau();
            zzaak zzaakVar3 = zzaakVar;
            if (zzau2 != null) {
                zzaakVar3 = zzaakVar;
                if (!this.zzf.zzk()) {
                    zzaak zzaakVar4 = zzaakVar;
                    if (zzfy.zza >= 23) {
                        if (zzaakVar != null) {
                            zzaakVar4 = zzaakVar;
                            if (!this.zzl) {
                                zzau2.zzo(zzaakVar);
                                zzaakVar3 = zzaakVar;
                            }
                        } else {
                            zzaakVar4 = null;
                        }
                    }
                    zzaB();
                    zzax();
                    zzaakVar3 = zzaakVar4;
                }
            }
            if (zzaakVar3 != null && zzaakVar3 != this.zzo) {
                zzaO();
                if (zzbf == 2) {
                    this.zzi.zzc();
                }
                if (this.zzf.zzk()) {
                    this.zzf.zzg(zzaakVar3, zzfq.zza);
                }
            } else {
                this.zzz = null;
                if (this.zzf.zzk()) {
                    this.zzf.zzc();
                }
            }
            int i2 = zzfy.zza;
            return;
        }
        if (zzaakVar != null && zzaakVar != this.zzo) {
            zzaO();
            Surface surface2 = this.zzn;
            if (surface2 != null && this.zzp) {
                this.zzg.zzq(surface2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzw() {
        this.zzz = null;
        this.zzi.zzd();
        int i = zzfy.zza;
        this.zzp = false;
        try {
            super.zzw();
        } finally {
            this.zzg.zzc(((zzsz) this).zza);
            this.zzg.zzt(zzdp.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzx(boolean z, boolean z2) {
        super.zzx(z, z2);
        zzm();
        this.zzg.zze(((zzsz) this).zza);
        this.zzi.zze(z2);
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzy() {
        zzaao zzaaoVar = this.zzi;
        zzel zzh = zzh();
        zzaaoVar.zzk(zzh);
        this.zzf.zzf(zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzz(long j, boolean z) {
        if (this.zzE == null) {
            super.zzz(j, z);
            if (this.zzf.zzk()) {
                this.zzf.zzh(zzas());
            }
            this.zzi.zzi();
            if (z) {
                this.zzi.zzc();
            }
            int i = zzfy.zza;
            this.zzt = 0;
            return;
        }
        throw null;
    }
}
