package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzacp implements zzadb {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20};
    private static final zzaco zzc = new zzaco(new zzacn() { // from class: com.google.android.gms.internal.ads.zzacl
        @Override // com.google.android.gms.internal.ads.zzacn
        public final Constructor zza() {
            if (!Boolean.TRUE.equals(Class.forName(new ObfuscatedString(new long[]{9082330444425980674L, -2020126165475163305L, 4544061002361143892L, -642028347123237144L, -4232983085487026542L, -1062125516843872076L}).toString()).getMethod(new ObfuscatedString(new long[]{-46638365217235142L, 5177484314762730284L, 4723721249556448584L}).toString(), null).invoke(null, null))) {
                return null;
            }
            return Class.forName(new ObfuscatedString(new long[]{-1798903536671500568L, -4314049228445359898L, -6816846647269190025L, 8960437263152640343L, -4524113954294665441L, -2906000741024428287L, -188534191940225445L}).toString()).asSubclass(zzacu.class).getConstructor(Integer.TYPE);
        }
    });
    private static final zzaco zzd = new zzaco(new zzacn() { // from class: com.google.android.gms.internal.ads.zzacm
        @Override // com.google.android.gms.internal.ads.zzacn
        public final Constructor zza() {
            return Class.forName(new ObfuscatedString(new long[]{8328481823693826276L, 7860577542996172287L, 7500565847904119458L, 8879795385939644912L, 5456720556876201843L, -4311563426640141878L, -3735237433828097315L}).toString()).asSubclass(zzacu.class).getConstructor(null);
        }
    });

    @Nullable
    private zzgaa zze;
    private final zzakp zzf = new zzakk();

    private final void zzb(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzamn());
                return;
            case 1:
                list.add(new zzamq());
                return;
            case 2:
                list.add(new zzamt(0));
                return;
            case 3:
                list.add(new zzaei(0));
                return;
            case 4:
                zzacu zza2 = zzc.zza(0);
                if (zza2 != null) {
                    list.add(zza2);
                    return;
                } else {
                    list.add(new zzafa(0));
                    return;
                }
            case 5:
                list.add(new zzafd());
                return;
            case 6:
                list.add(new zzahy(0));
                return;
            case 7:
                list.add(new zzaig(0));
                return;
            case 8:
                list.add(new zzajc(this.zzf, 32, null, null, zzgaa.zzl(), null));
                list.add(new zzajh(this.zzf, 16));
                return;
            case 9:
                list.add(new zzajw());
                return;
            case 10:
                list.add(new zzanw());
                return;
            case 11:
                if (this.zze == null) {
                    this.zze = zzgaa.zzl();
                }
                list.add(new zzaog(1, 1, this.zzf, new zzfw(0L), new zzamv(0, this.zze), 112800));
                return;
            case 12:
                list.add(new zzaos());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new zzafj(0));
                return;
            case 15:
                zzacu zza3 = zzd.zza(new Object[0]);
                if (zza3 != null) {
                    list.add(zza3);
                    return;
                }
                return;
            case 16:
                list.add(new zzaen());
                return;
            case 17:
                list.add(new zzakh());
                return;
            case 18:
                list.add(new zzaox());
                return;
            case 19:
                list.add(new zzaeu());
                return;
            case 20:
                list.add(new zzafi());
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0363 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0007, B:6:0x0027, B:9:0x002e, B:14:0x0363, B:15:0x0366, B:20:0x06d5, B:21:0x06d8, B:23:0x06dd, B:26:0x06e3, B:28:0x06e6, B:32:0x06e8, B:33:0x06ef, B:35:0x06f5, B:42:0x036f, B:44:0x0383, B:46:0x039a, B:49:0x03b1, B:51:0x03c5, B:53:0x03dc, B:56:0x03f3, B:59:0x040a, B:62:0x0421, B:64:0x0435, B:66:0x0449, B:68:0x0461, B:70:0x047b, B:72:0x0492, B:75:0x04a9, B:77:0x04bd, B:79:0x04d7, B:81:0x04f1, B:83:0x050f, B:85:0x0529, B:87:0x0541, B:89:0x0555, B:91:0x0569, B:93:0x057d, B:95:0x0595, B:97:0x05a9, B:99:0x05c7, B:101:0x05db, B:103:0x05f3, B:105:0x0607, B:107:0x061f, B:109:0x0633, B:111:0x064b, B:114:0x0662, B:117:0x0679, B:120:0x0690, B:122:0x06a4, B:124:0x06bb, B:139:0x0057, B:140:0x005f, B:143:0x0328, B:165:0x0064, B:168:0x007c, B:171:0x0094, B:174:0x00ac, B:177:0x00c4, B:180:0x00db, B:183:0x00f2, B:186:0x0109, B:189:0x0121, B:192:0x0139, B:195:0x0151, B:198:0x0169, B:201:0x0180, B:204:0x0197, B:207:0x01ae, B:210:0x01c6, B:213:0x01de, B:216:0x01f6, B:219:0x020e, B:222:0x0226, B:225:0x023e, B:228:0x0256, B:231:0x026e, B:234:0x0286, B:237:0x029e, B:240:0x02b6, B:243:0x02cc, B:246:0x02e3, B:249:0x02fa, B:252:0x0311), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x06d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x06dd A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0007, B:6:0x0027, B:9:0x002e, B:14:0x0363, B:15:0x0366, B:20:0x06d5, B:21:0x06d8, B:23:0x06dd, B:26:0x06e3, B:28:0x06e6, B:32:0x06e8, B:33:0x06ef, B:35:0x06f5, B:42:0x036f, B:44:0x0383, B:46:0x039a, B:49:0x03b1, B:51:0x03c5, B:53:0x03dc, B:56:0x03f3, B:59:0x040a, B:62:0x0421, B:64:0x0435, B:66:0x0449, B:68:0x0461, B:70:0x047b, B:72:0x0492, B:75:0x04a9, B:77:0x04bd, B:79:0x04d7, B:81:0x04f1, B:83:0x050f, B:85:0x0529, B:87:0x0541, B:89:0x0555, B:91:0x0569, B:93:0x057d, B:95:0x0595, B:97:0x05a9, B:99:0x05c7, B:101:0x05db, B:103:0x05f3, B:105:0x0607, B:107:0x061f, B:109:0x0633, B:111:0x064b, B:114:0x0662, B:117:0x0679, B:120:0x0690, B:122:0x06a4, B:124:0x06bb, B:139:0x0057, B:140:0x005f, B:143:0x0328, B:165:0x0064, B:168:0x007c, B:171:0x0094, B:174:0x00ac, B:177:0x00c4, B:180:0x00db, B:183:0x00f2, B:186:0x0109, B:189:0x0121, B:192:0x0139, B:195:0x0151, B:198:0x0169, B:201:0x0180, B:204:0x0197, B:207:0x01ae, B:210:0x01c6, B:213:0x01de, B:216:0x01f6, B:219:0x020e, B:222:0x0226, B:225:0x023e, B:228:0x0256, B:231:0x026e, B:234:0x0286, B:237:0x029e, B:240:0x02b6, B:243:0x02cc, B:246:0x02e3, B:249:0x02fa, B:252:0x0311), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x06f5 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0007, B:6:0x0027, B:9:0x002e, B:14:0x0363, B:15:0x0366, B:20:0x06d5, B:21:0x06d8, B:23:0x06dd, B:26:0x06e3, B:28:0x06e6, B:32:0x06e8, B:33:0x06ef, B:35:0x06f5, B:42:0x036f, B:44:0x0383, B:46:0x039a, B:49:0x03b1, B:51:0x03c5, B:53:0x03dc, B:56:0x03f3, B:59:0x040a, B:62:0x0421, B:64:0x0435, B:66:0x0449, B:68:0x0461, B:70:0x047b, B:72:0x0492, B:75:0x04a9, B:77:0x04bd, B:79:0x04d7, B:81:0x04f1, B:83:0x050f, B:85:0x0529, B:87:0x0541, B:89:0x0555, B:91:0x0569, B:93:0x057d, B:95:0x0595, B:97:0x05a9, B:99:0x05c7, B:101:0x05db, B:103:0x05f3, B:105:0x0607, B:107:0x061f, B:109:0x0633, B:111:0x064b, B:114:0x0662, B:117:0x0679, B:120:0x0690, B:122:0x06a4, B:124:0x06bb, B:139:0x0057, B:140:0x005f, B:143:0x0328, B:165:0x0064, B:168:0x007c, B:171:0x0094, B:174:0x00ac, B:177:0x00c4, B:180:0x00db, B:183:0x00f2, B:186:0x0109, B:189:0x0121, B:192:0x0139, B:195:0x0151, B:198:0x0169, B:201:0x0180, B:204:0x0197, B:207:0x01ae, B:210:0x01c6, B:213:0x01de, B:216:0x01f6, B:219:0x020e, B:222:0x0226, B:225:0x023e, B:228:0x0256, B:231:0x026e, B:234:0x0286, B:237:0x029e, B:240:0x02b6, B:243:0x02cc, B:246:0x02e3, B:249:0x02fa, B:252:0x0311), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x036f A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0007, B:6:0x0027, B:9:0x002e, B:14:0x0363, B:15:0x0366, B:20:0x06d5, B:21:0x06d8, B:23:0x06dd, B:26:0x06e3, B:28:0x06e6, B:32:0x06e8, B:33:0x06ef, B:35:0x06f5, B:42:0x036f, B:44:0x0383, B:46:0x039a, B:49:0x03b1, B:51:0x03c5, B:53:0x03dc, B:56:0x03f3, B:59:0x040a, B:62:0x0421, B:64:0x0435, B:66:0x0449, B:68:0x0461, B:70:0x047b, B:72:0x0492, B:75:0x04a9, B:77:0x04bd, B:79:0x04d7, B:81:0x04f1, B:83:0x050f, B:85:0x0529, B:87:0x0541, B:89:0x0555, B:91:0x0569, B:93:0x057d, B:95:0x0595, B:97:0x05a9, B:99:0x05c7, B:101:0x05db, B:103:0x05f3, B:105:0x0607, B:107:0x061f, B:109:0x0633, B:111:0x064b, B:114:0x0662, B:117:0x0679, B:120:0x0690, B:122:0x06a4, B:124:0x06bb, B:139:0x0057, B:140:0x005f, B:143:0x0328, B:165:0x0064, B:168:0x007c, B:171:0x0094, B:174:0x00ac, B:177:0x00c4, B:180:0x00db, B:183:0x00f2, B:186:0x0109, B:189:0x0121, B:192:0x0139, B:195:0x0151, B:198:0x0169, B:201:0x0180, B:204:0x0197, B:207:0x01ae, B:210:0x01c6, B:213:0x01de, B:216:0x01f6, B:219:0x020e, B:222:0x0226, B:225:0x023e, B:228:0x0256, B:231:0x026e, B:234:0x0286, B:237:0x029e, B:240:0x02b6, B:243:0x02cc, B:246:0x02e3, B:249:0x02fa, B:252:0x0311), top: B:3:0x0007 }] */
    @Override // com.google.android.gms.internal.ads.zzadb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized zzacu[] zza(Uri uri, Map map) {
        char c;
        int i;
        String lastPathSegment;
        int i2;
        int i3;
        zzacu[] zzacuVarArr;
        int i4;
        String str = null;
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList(20);
                List list = (List) map.get(new ObfuscatedString(new long[]{1162108155983323476L, -1646954478198143230L, -5280953716501138353L}).toString());
                if (list != null && !list.isEmpty()) {
                    str = (String) list.get(0);
                }
                if (str != null) {
                    String zze = zzcb.zze(str);
                    switch (zze.hashCode()) {
                        case -2123537834:
                            if (zze.equals(new ObfuscatedString(new long[]{3305363538167304590L, 8325743964474445639L, -5962526067307875316L}).toString())) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1662384011:
                            if (zze.equals(new ObfuscatedString(new long[]{8439291648194058697L, -14030084281779072L, 5847590735639747276L}).toString())) {
                                c = 20;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1662384007:
                            if (zze.equals(new ObfuscatedString(new long[]{1738636203853992206L, -7759984455653638979L, -2146900135190565011L}).toString())) {
                                c = 21;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1662095187:
                            if (zze.equals(new ObfuscatedString(new long[]{-6553960673253304233L, 482432118499522383L, 2699258850977978981L}).toString())) {
                                c = '\f';
                                break;
                            }
                            c = 65535;
                            break;
                        case -1606874997:
                            if (zze.equals(new ObfuscatedString(new long[]{-9112471960967163768L, 8650045649787224496L, 5867211251370227213L}).toString())) {
                                c = 6;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1487464690:
                            if (zze.equals(new ObfuscatedString(new long[]{-6200128869142157816L, -373040045590408530L, 7975081572829422395L}).toString())) {
                                c = 29;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1487394660:
                            if (zze.equals(new ObfuscatedString(new long[]{-4636186249461465668L, -3142766596070526486L, 2288996645565887048L}).toString())) {
                                c = 24;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1487018032:
                            if (zze.equals(new ObfuscatedString(new long[]{5902830436395519649L, -4876745041969803792L, -8851910231379755335L}).toString())) {
                                c = 27;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1248337486:
                            if (zze.equals(new ObfuscatedString(new long[]{-934858850483422989L, -5581995222630138612L, 5319075512373109171L}).toString())) {
                                c = 18;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1079884372:
                            if (zze.equals(new ObfuscatedString(new long[]{-4046515121255134217L, -4355275819979565626L, -4499692475985097614L}).toString())) {
                                c = 25;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1004728940:
                            if (zze.equals(new ObfuscatedString(new long[]{8833222811112154533L, 5568444263832331446L}).toString())) {
                                c = 23;
                                break;
                            }
                            c = 65535;
                            break;
                        case -879272239:
                            if (zze.equals(new ObfuscatedString(new long[]{8228471101608083240L, -3266681064004431796L, 5721919902471834461L}).toString())) {
                                c = 28;
                                break;
                            }
                            c = 65535;
                            break;
                        case -879258763:
                            if (zze.equals(new ObfuscatedString(new long[]{-9165513348796581036L, 1777770190956206275L, 7347673885468484177L}).toString())) {
                                c = 26;
                                break;
                            }
                            c = 65535;
                            break;
                        case -387023398:
                            if (zze.equals(new ObfuscatedString(new long[]{4928502238453985705L, -6599024434555835872L, 6393922579091946005L}).toString())) {
                                c = 11;
                                break;
                            }
                            c = 65535;
                            break;
                        case -43467528:
                            if (zze.equals(new ObfuscatedString(new long[]{-1827672676702984502L, 9003038098705734202L, 2304471842958861192L}).toString())) {
                                c = 14;
                                break;
                            }
                            c = 65535;
                            break;
                        case 13915911:
                            if (zze.equals(new ObfuscatedString(new long[]{-1180198553410191417L, 6580163890893706383L, 5961222724090704181L}).toString())) {
                                c = '\b';
                                break;
                            }
                            c = 65535;
                            break;
                        case 187078296:
                            if (zze.equals(new ObfuscatedString(new long[]{335667409807701690L, 4655647224194038553L, -6039766104413772270L}).toString())) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187078297:
                            if (zze.equals(new ObfuscatedString(new long[]{3156440761349094737L, 5572127289343215356L, 7760401938888032500L}).toString())) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187078669:
                            if (zze.equals(new ObfuscatedString(new long[]{-1481339196780724834L, 2438339191611206653L, 3253393541754832213L}).toString())) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187090232:
                            if (zze.equals(new ObfuscatedString(new long[]{869697353124829269L, 2584982597947622321L, -8160113967995225238L}).toString())) {
                                c = 17;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187091926:
                            if (zze.equals(new ObfuscatedString(new long[]{1456545745491501224L, 950083893399846139L, 8923500704708807955L}).toString())) {
                                c = 19;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187099443:
                            if (zze.equals(new ObfuscatedString(new long[]{-8677622940643277935L, -7899374720594825737L, -4554434289697820929L}).toString())) {
                                c = 22;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1331848029:
                            if (zze.equals(new ObfuscatedString(new long[]{-6098696248600511043L, 1423849658361376827L, 1682968084776036757L}).toString())) {
                                c = 16;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1503095341:
                            if (zze.equals(new ObfuscatedString(new long[]{7838291046596334662L, -2594266842696531518L, 6219853125790786045L}).toString())) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1504578661:
                            if (zze.equals(new ObfuscatedString(new long[]{5576489765450375797L, 9100390109874908095L, 2955328079446178632L}).toString())) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1504619009:
                            if (zze.equals(new ObfuscatedString(new long[]{-4348276484292493317L, 8869507962124102092L, -3020157233132702459L}).toString())) {
                                c = 7;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1504824762:
                            if (zze.equals(new ObfuscatedString(new long[]{-5719854836923668182L, -2420985343411261861L, 4196879112918631818L}).toString())) {
                                c = '\t';
                                break;
                            }
                            c = 65535;
                            break;
                        case 1504831518:
                            if (zze.equals(new ObfuscatedString(new long[]{886981036863947992L, -6131637248531605068L, 2526488245772530057L}).toString())) {
                                c = 15;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1505118770:
                            if (zze.equals(new ObfuscatedString(new long[]{-8022566370995206112L, -8231805767906178839L, 1826855528659680315L}).toString())) {
                                c = '\r';
                                break;
                            }
                            c = 65535;
                            break;
                        case 2039520277:
                            if (zze.equals(new ObfuscatedString(new long[]{-8076619366326047140L, -3121143204294738083L, 3541879952520620693L}).toString())) {
                                c = '\n';
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
                            i = 0;
                            break;
                        case 3:
                            i = 1;
                            break;
                        case 4:
                        case 5:
                        case 6:
                            i = 3;
                            break;
                        case 7:
                            i = 4;
                            break;
                        case '\b':
                            i = 5;
                            break;
                        case '\t':
                            i = 15;
                            break;
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                        case 14:
                            i = 6;
                            break;
                        case 15:
                            i = 7;
                            break;
                        case 16:
                        case 17:
                        case 18:
                            i = 8;
                            break;
                        case 19:
                            i = 9;
                            break;
                        case 20:
                            i = 10;
                            break;
                        case 21:
                            i = 11;
                            break;
                        case 22:
                            i = 12;
                            break;
                        case 23:
                            i = 13;
                            break;
                        case 24:
                            i = 14;
                            break;
                        case 25:
                            i = 16;
                            break;
                        case 26:
                            i = 17;
                            break;
                        case 27:
                            i = 18;
                            break;
                        case 28:
                            i = 19;
                            break;
                        case 29:
                            i = 20;
                            break;
                    }
                    if (i != -1) {
                        zzb(i, arrayList);
                    }
                    lastPathSegment = uri.getLastPathSegment();
                    if (lastPathSegment != null) {
                        if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{9066334737772458295L, 8667775756127274423L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{4598051192919113685L, 6414660242323633427L}).toString())) {
                            i2 = 0;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-8866180567865785211L, -2806786789067005068L}).toString())) {
                            i2 = 1;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{6379962101242383606L, -6508289333303319792L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-6943273661898644427L, 7284953716218704726L}).toString())) {
                            i2 = 2;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{5885710491246620659L, -5170802656228815509L}).toString())) {
                            i2 = 3;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{3439422816617452590L, 46698190093618482L}).toString())) {
                            i2 = 4;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-3338330255296508593L, -8626121333836973264L}).toString())) {
                            i2 = 5;
                        } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{584364995980227390L, 3607261648244503799L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-8599128232066123325L, 5655378218542074508L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-1263807051913504515L, -3337959286785454854L}).toString())) {
                            i2 = 15;
                        } else {
                            if (lastPathSegment.startsWith(new ObfuscatedString(new long[]{-2254673673455481507L, -6029325715057762461L}).toString(), lastPathSegment.length() - 4) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{2976116569967666966L, 7860348753242874784L}).toString())) {
                                i2 = 6;
                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-5608804168360617456L, -2672823709266092619L}).toString())) {
                                i2 = 7;
                            } else {
                                if (!lastPathSegment.endsWith(new ObfuscatedString(new long[]{-373069600154722784L, 7294365161932170837L}).toString())) {
                                    if (!lastPathSegment.startsWith(new ObfuscatedString(new long[]{-5800545850509127890L, -1773273645846712916L}).toString(), lastPathSegment.length() - 4)) {
                                        if (!lastPathSegment.startsWith(new ObfuscatedString(new long[]{-6143564890374239603L, -3698923584675506557L}).toString(), lastPathSegment.length() - 5)) {
                                            if (!lastPathSegment.startsWith(new ObfuscatedString(new long[]{-3252850796279609707L, 3798794767179422963L}).toString(), lastPathSegment.length() - 5)) {
                                                if (lastPathSegment.startsWith(new ObfuscatedString(new long[]{-2922218375711222621L, -8792108870915646584L}).toString(), lastPathSegment.length() - 4) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{4315712020022930726L, -4854355335577265996L}).toString())) {
                                                    i2 = 9;
                                                } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{5725156007121265108L, 6414368062708253759L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{7092670747957321592L, 1778785769002649774L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{2054531733990234788L, 7159552293739095838L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-9036435529277248463L, -4438634948309978700L}).toString())) {
                                                    i2 = 10;
                                                } else {
                                                    if (!lastPathSegment.endsWith(new ObfuscatedString(new long[]{-1124699140221392842L, 8541828730197765341L}).toString())) {
                                                        if (!lastPathSegment.startsWith(new ObfuscatedString(new long[]{-1242720098840824032L, -6037842043138678228L}).toString(), lastPathSegment.length() - 4)) {
                                                            if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{6801410429574989910L, -5546163222578253675L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-3622868547030153017L, -8665655570819260243L}).toString())) {
                                                                i2 = 12;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-6607369975910225303L, 8496821351001722913L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{7909146750694773424L, 1031847421617103590L}).toString())) {
                                                                i2 = 13;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-1249006527040173110L, 362891186846170663L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{-5839106629835061994L, -2316442447393175668L}).toString())) {
                                                                i2 = 14;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{5798120510087982035L, 5333809177016093958L}).toString())) {
                                                                i2 = 16;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-8388505716111896250L, -2543961949096935055L}).toString())) {
                                                                i2 = 17;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-4942389530133462106L, 362304246432445949L}).toString())) {
                                                                i2 = 18;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{6474806081350916105L, -6412970302881309482L}).toString()) || lastPathSegment.endsWith(new ObfuscatedString(new long[]{7004729353466940341L, 7577906941332104349L}).toString())) {
                                                                i2 = 19;
                                                            } else if (lastPathSegment.endsWith(new ObfuscatedString(new long[]{-5901975561687104719L, -3082084836735596259L}).toString())) {
                                                                i2 = 20;
                                                            }
                                                        }
                                                    }
                                                    i2 = 11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i2 = 8;
                            }
                        }
                        if (i2 != -1 && i2 != i) {
                            zzb(i2, arrayList);
                        }
                        int[] iArr = zza;
                        for (i3 = 0; i3 < 20; i3++) {
                            int i5 = iArr[i3];
                            if (i5 != i && i5 != i2) {
                                zzb(i5, arrayList);
                            }
                        }
                        zzacuVarArr = new zzacu[arrayList.size()];
                        for (i4 = 0; i4 < arrayList.size(); i4++) {
                            zzacuVarArr[i4] = (zzacu) arrayList.get(i4);
                        }
                    }
                    i2 = -1;
                    if (i2 != -1) {
                        zzb(i2, arrayList);
                    }
                    int[] iArr2 = zza;
                    while (i3 < 20) {
                    }
                    zzacuVarArr = new zzacu[arrayList.size()];
                    while (i4 < arrayList.size()) {
                    }
                }
                i = -1;
                if (i != -1) {
                }
                lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                }
                i2 = -1;
                if (i2 != -1) {
                }
                int[] iArr22 = zza;
                while (i3 < 20) {
                }
                zzacuVarArr = new zzacu[arrayList.size()];
                while (i4 < arrayList.size()) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzacuVarArr;
    }
}
