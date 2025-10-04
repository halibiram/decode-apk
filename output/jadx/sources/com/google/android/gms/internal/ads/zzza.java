package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.android.volley.DefaultRetryPolicy;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzza implements zzyw, zzhy {
    public static final zzgaa zza = zzgaa.zzp(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final zzgaa zzb = zzgaa.zzp(1500000L, 980000L, 750000L, 520000L, 290000L);
    public static final zzgaa zzc = zzgaa.zzp(2000000L, 1300000L, 1000000L, 860000L, 610000L);
    public static final zzgaa zzd = zzgaa.zzp(2500000L, 1700000L, 1200000L, 970000L, 680000L);
    public static final zzgaa zze = zzgaa.zzp(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
    public static final zzgaa zzf = zzgaa.zzp(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);

    @Nullable
    private static zzza zzg;
    private final zzgad zzh;
    private final zzel zzj;

    @GuardedBy("this")
    private int zzl;

    @GuardedBy("this")
    private long zzm;

    @GuardedBy("this")
    private long zzn;

    @GuardedBy("this")
    private long zzo;

    @GuardedBy("this")
    private long zzp;

    @GuardedBy("this")
    private long zzq;

    @GuardedBy("this")
    private long zzr;
    private int zzs;
    private final zzyu zzi = new zzyu();

    @GuardedBy("this")
    private final zzzp zzk = new zzzp(TrafficData.INTERVAL_TIME);

    public /* synthetic */ zzza(Context context, Map map, int i, zzel zzelVar, boolean z, zzyz zzyzVar) {
        this.zzh = zzgad.zzc(map);
        this.zzj = zzelVar;
        if (context != null) {
            zzfn zzb2 = zzfn.zzb(context);
            int zza2 = zzb2.zza();
            this.zzs = zza2;
            this.zzq = zzi(zza2);
            zzb2.zzd(new zzyy(this));
            return;
        }
        this.zzs = 0;
        this.zzq = zzi(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized zzza zzg(Context context) {
        zzza zzzaVar;
        Context applicationContext;
        String zzb2;
        TelephonyManager telephonyManager;
        synchronized (zzza.class) {
            try {
                if (zzg == null) {
                    if (context == null) {
                        applicationContext = null;
                    } else {
                        applicationContext = context.getApplicationContext();
                    }
                    Context context2 = applicationContext;
                    int i = zzfy.zza;
                    if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(new ObfuscatedString(new long[]{-2472925328519471676L, -4242977526694754643L}).toString())) != null) {
                        String networkCountryIso = telephonyManager.getNetworkCountryIso();
                        if (!TextUtils.isEmpty(networkCountryIso)) {
                            zzb2 = zzfwk.zzb(networkCountryIso);
                            int[] zzm = zzm(zzb2);
                            HashMap hashMap = new HashMap(8);
                            hashMap.put(0, 1000000L);
                            zzgaa zzgaaVar = zza;
                            hashMap.put(2, (Long) zzgaaVar.get(zzm[0]));
                            hashMap.put(3, (Long) zzb.get(zzm[1]));
                            hashMap.put(4, (Long) zzc.get(zzm[2]));
                            hashMap.put(5, (Long) zzd.get(zzm[3]));
                            hashMap.put(10, (Long) zze.get(zzm[4]));
                            hashMap.put(9, (Long) zzf.get(zzm[5]));
                            hashMap.put(7, (Long) zzgaaVar.get(zzm[0]));
                            zzg = new zzza(context2, hashMap, TrafficData.INTERVAL_TIME, zzel.zza, true, null);
                        }
                    }
                    zzb2 = zzfwk.zzb(Locale.getDefault().getCountry());
                    int[] zzm2 = zzm(zzb2);
                    HashMap hashMap2 = new HashMap(8);
                    hashMap2.put(0, 1000000L);
                    zzgaa zzgaaVar2 = zza;
                    hashMap2.put(2, (Long) zzgaaVar2.get(zzm2[0]));
                    hashMap2.put(3, (Long) zzb.get(zzm2[1]));
                    hashMap2.put(4, (Long) zzc.get(zzm2[2]));
                    hashMap2.put(5, (Long) zzd.get(zzm2[3]));
                    hashMap2.put(10, (Long) zze.get(zzm2[4]));
                    hashMap2.put(9, (Long) zzf.get(zzm2[5]));
                    hashMap2.put(7, (Long) zzgaaVar2.get(zzm2[0]));
                    zzg = new zzza(context2, hashMap2, TrafficData.INTERVAL_TIME, zzel.zza, true, null);
                }
                zzzaVar = zzg;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzzaVar;
    }

    private final long zzi(int i) {
        Long l = (Long) this.zzh.get(Integer.valueOf(i));
        if (l == null) {
            l = (Long) this.zzh.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    @GuardedBy("this")
    private final void zzj(int i, long j, long j2) {
        int i2;
        long j3;
        if (i == 0) {
            if (j == 0) {
                if (j2 != this.zzr) {
                    j3 = 0;
                } else {
                    return;
                }
            } else {
                j3 = j;
            }
            i2 = 0;
        } else {
            i2 = i;
            j3 = j;
        }
        this.zzr = j2;
        this.zzi.zzb(i2, j3, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzk(int i) {
        int i2;
        try {
            if (this.zzs != i) {
                this.zzs = i;
                if (i != 1 && i != 0 && i != 8) {
                    this.zzq = zzi(i);
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (this.zzl > 0) {
                        i2 = (int) (elapsedRealtime - this.zzm);
                    } else {
                        i2 = 0;
                    }
                    zzj(i2, this.zzn, this.zzq);
                    this.zzm = elapsedRealtime;
                    this.zzn = 0L;
                    this.zzp = 0L;
                    this.zzo = 0L;
                    this.zzk.zzc();
                }
            }
        } finally {
        }
    }

    private static boolean zzl(zzhb zzhbVar, boolean z) {
        if (z && !zzhbVar.zza(8)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0238, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3628732988227880800L, 3996898703549025255L}).toString()) != false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x09fb, code lost:
    
        return new int[]{2, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x024e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3265996136197899002L, -1670119684704727105L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x1557, code lost:
    
        return new int[]{4, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x027e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8803650013705934510L, -5401933723974797754L}).toString()) != false) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0a2f, code lost:
    
        return new int[]{3, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0294, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3234757942039749797L, 5669117826756735115L}).toString()) != false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0bbb, code lost:
    
        return new int[]{4, 2, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02aa, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-9084232785329553322L, 1063492560224977349L}).toString()) != false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0ded, code lost:
    
        return new int[]{4, 3, 3, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x030e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5523369094137430255L, -7934542874321586276L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0324, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1279939003740529316L, -773595974242060876L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x033a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6413232956710754334L, -404252639267313235L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x1708, code lost:
    
        return new int[]{0, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x03b8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6178174246301447111L, -5433554098325223579L}).toString()) != false) goto L815;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x1509, code lost:
    
        return new int[]{0, 2, 1, 2, 3, 3};
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0402, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{519751456820008386L, 5401008145083063897L}).toString()) != false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0432, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1309085740816160254L, 7056074737389337792L}).toString()) != false) goto L889;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x16ee, code lost:
    
        return new int[]{1, 1, 1, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x047c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4910126895748769644L, 8256099285158437006L}).toString()) != false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0492, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6718108285002447156L, -5216978155216731574L}).toString()) != false) goto L784;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x143d, code lost:
    
        return new int[]{4, 2, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x04a8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-231935707699723333L, 7552373176676435312L}).toString()) != false) goto L744;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x132f, code lost:
    
        return new int[]{3, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x04be, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2739353628044270838L, -699100932854039829L}).toString()) != false) goto L804;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x14bf, code lost:
    
        return new int[]{0, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x04ee, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6660223015572870641L, 9100633360937917231L}).toString()) != false) goto L839;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x15a5, code lost:
    
        return new int[]{4, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x051e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3366483355736118149L, -3531410838189803972L}).toString()) != false) goto L866;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x1657, code lost:
    
        return new int[]{4, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0534, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-808493466014781423L, -96297849073774830L}).toString()) != false) goto L839;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x054a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4866709986065169624L, -1171318690166215508L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0594, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4710050145959537497L, -7974783974197022740L}).toString()) != false) goto L656;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x10f3, code lost:
    
        return new int[]{4, 3, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3640011326101131913L, 5634165386462471876L}).toString()) != false) goto L862;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x05f8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{79392123455083953L, 4246385067317617694L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x060e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5023440338431548801L, -8628696830795713288L}).toString()) != false) goto L851;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x15f3, code lost:
    
        return new int[]{4, 2, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x063e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2878310393619401500L, -3143610219761729950L}).toString()) != false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x1245, code lost:
    
        return new int[]{3, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0654, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-168251030136782381L, -454129336727947176L}).toString()) != false) goto L835;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x163d, code lost:
    
        return new int[]{2, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x158b, code lost:
    
        return new int[]{0, 0, 0, 0, 1, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x066a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3626845328355888079L, 3868075297496515803L}).toString()) != false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x069a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8331547208667202855L, -3357305433405307265L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x06b0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6736859529483638766L, -6986176595505224901L}).toString()) != false) goto L839;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x06c6, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1394517544215877856L, 4788451637407476595L}).toString()) != false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x06dc, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6353738049144471789L, 3167165000475419638L}).toString()) != false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x07ac, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7592150420734215977L, 285616806942720436L}).toString()) != false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x07dc, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3318384438713696285L, 4092055903681465336L}).toString()) != false) goto L835;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0826, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-316338182439534514L, 3485552817925063621L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5577995441194320240L, -766892419795891014L}).toString()) != false) goto L732;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x088a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7644941188669771354L, -2204591431709674139L}).toString()) != false) goto L497;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0cc9, code lost:
    
        return new int[]{4, 3, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x08d4, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{9071166637624774235L, 4858780434642506635L}).toString()) != false) goto L901;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x173c, code lost:
    
        return new int[]{2, 3, 2, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x12e1, code lost:
    
        return new int[]{3, 4, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x091e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7813349938408785847L, -5143722175192343416L}).toString()) != false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0934, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1963442353418250162L, 4462222017365725991L}).toString()) != false) goto L784;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0998, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2945177698044241338L, 2961137240830116919L}).toString()) != false) goto L788;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x1457, code lost:
    
        return new int[]{2, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x09c8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1018363782249951556L, -8972900503125761440L}).toString()) != false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x09de, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-9072634988411220532L, -4165452497629315304L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x09f4, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1056564544917545032L, -8976338202598912877L}).toString()) != false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0a28, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5543510854943687891L, -2389970714099886715L}).toString()) != false) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0ac4, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2358168099162156527L, -2931329118677830354L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0ada, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8221326482117953098L, -920784753184407709L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0af0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-583608999360517452L, -1019051827048902306L}).toString()) != false) goto L800;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x14a5, code lost:
    
        return new int[]{4, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0b20, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3404768612863140129L, 9211854661082165040L}).toString()) != false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0b6e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8422774363138069880L, -8402495207540064666L}).toString()) != false) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0cf9, code lost:
    
        return new int[]{3, 2, 3, 3, 4, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x0b84, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3243951401255046538L, -1394211853615544788L}).toString()) != false) goto L811;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x14ef, code lost:
    
        return new int[]{3, 3, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x0bb4, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6219112466745533461L, -9221917568556833126L}).toString()) != false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0bce, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8468802698286409786L, -5170458409232729555L}).toString()) != false) goto L732;
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0c32, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3454173559633381662L, 2546071447323270389L}).toString()) != false) goto L660;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x110d, code lost:
    
        return new int[]{1, 2, 2, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0c62, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{267621482435932984L, 6821005307126976483L}).toString()) != false) goto L851;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0c78, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3025013001659740979L, -7950644011001378438L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0cc2, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1614528560942982236L, 3487856578231914202L}).toString()) != false) goto L497;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0cdc, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5118337937709270285L, 6760460233463143333L}).toString()) != false) goto L748;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x1349, code lost:
    
        return new int[]{3, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0cf2, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2056820337890842402L, -8317541475068479976L}).toString()) != false) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0d0c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3743282546752865245L, -2509945888018300298L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x0d8a, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5436586066785947050L, -3883143918841777048L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0da0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4869451204888885019L, -4121430211043654810L}).toString()) != false) goto L617;
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:0x0ff3, code lost:
    
        return new int[]{1, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0dd0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5557644999326133222L, -2967920869781605151L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0de6, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8699170686495460939L, -2970224480814530845L}).toString()) != false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0e00, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6542605153639136517L, -7441526052590959877L}).toString()) != false) goto L784;
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0e7e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5591029070340213690L, 255457838877214232L}).toString()) != false) goto L889;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0eae, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7010860352038339921L, 9102047796145523653L}).toString()) != false) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fa, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1597036412738097422L, 4369739559300746452L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x1127, code lost:
    
        return new int[]{0, 2, 0, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0ede, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4265721508716873496L, -3985446703373065315L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x16d4, code lost:
    
        return new int[]{1, 2, 0, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0f5c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2551056635715590573L, 1650112859236243729L}).toString()) != false) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x0fc0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7399362599610663353L, -6698781059023665119L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0fd6, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4679785624431216005L, 2931243177811347794L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x0fec, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8725282477968834516L, 5248401394261525708L}).toString()) != false) goto L617;
     */
    /* JADX WARN: Code restructure failed: missing block: B:629:0x10a2, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{7024900335348160863L, -6931573099259364030L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:639:0x10ec, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8442845796445309989L, 6925589699627378864L}).toString()) != false) goto L656;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x1106, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6348366919936496728L, -4163668035587328356L}).toString()) != false) goto L660;
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x1120, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3068237274631299144L, -8374799232502668696L}).toString()) != false) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:685:0x123e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2192526338913557204L, 3805284616526163081L}).toString()) != false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:703:0x12c0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5097652143052172093L, 8542311316314767827L}).toString()) != false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:705:0x12da, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3420957721525288025L, 3447384209864912003L}).toString()) != false) goto L732;
     */
    /* JADX WARN: Code restructure failed: missing block: B:707:0x12f4, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-6720480849612976086L, -6968645555341960309L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:713:0x1328, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{6283433581803546781L, 2710885931342956065L}).toString()) != false) goto L744;
     */
    /* JADX WARN: Code restructure failed: missing block: B:715:0x1342, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2138374735528292920L, 4875983481288713011L}).toString()) != false) goto L748;
     */
    /* JADX WARN: Code restructure failed: missing block: B:717:0x135c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{190643683678314893L, -501696959635694979L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x015e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1463209509768232462L, -7500664563098922685L}).toString()) != false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:723:0x138c, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1803036695185155138L, -2182743980884938102L}).toString()) != false) goto L851;
     */
    /* JADX WARN: Code restructure failed: missing block: B:737:0x13f0, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8309323790124400576L, -4799801799136755154L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:739:0x1406, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1853640612699516096L, 3880442423304967786L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0b27, code lost:
    
        return new int[]{1, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:745:0x1436, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5377930808082965774L, -6219159196389858906L}).toString()) != false) goto L784;
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x1450, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7122594501325333491L, -3890818985836532949L}).toString()) != false) goto L788;
     */
    /* JADX WARN: Code restructure failed: missing block: B:757:0x149e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{4001947988609773762L, 4014999312703374039L}).toString()) != false) goto L800;
     */
    /* JADX WARN: Code restructure failed: missing block: B:759:0x14b8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5514874270189764109L, 8645367181208872312L}).toString()) != false) goto L804;
     */
    /* JADX WARN: Code restructure failed: missing block: B:761:0x14d2, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{8591872772609049299L, -8342240845079469261L}).toString()) != false) goto L877;
     */
    /* JADX WARN: Code restructure failed: missing block: B:763:0x16a0, code lost:
    
        return new int[]{2, 2, 2, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:765:0x14e8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2941166120000576674L, -19150910971688187L}).toString()) != false) goto L811;
     */
    /* JADX WARN: Code restructure failed: missing block: B:767:0x1502, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5649647893022118893L, 8604204617573789352L}).toString()) != false) goto L815;
     */
    /* JADX WARN: Code restructure failed: missing block: B:777:0x1550, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8262676363050276938L, 72502451268079832L}).toString()) != false) goto L827;
     */
    /* JADX WARN: Code restructure failed: missing block: B:783:0x1584, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5977828349596282177L, -3690758238102905826L}).toString()) != false) goto L835;
     */
    /* JADX WARN: Code restructure failed: missing block: B:785:0x159e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3980305619689778876L, 2934010400623784792L}).toString()) != false) goto L839;
     */
    /* JADX WARN: Code restructure failed: missing block: B:795:0x15ec, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5359561590224880376L, 6425540997515375863L}).toString()) != false) goto L851;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x018e, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2439561151542314544L, -8458418172012760596L}).toString()) != false) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x1620, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-4443390127888997046L, -1839251164516146627L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:803:0x1636, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{9007563559549355959L, 3555068808788938726L}).toString()) != false) goto L862;
     */
    /* JADX WARN: Code restructure failed: missing block: B:805:0x1650, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2819678031457711369L, -5449533461874670837L}).toString()) != false) goto L866;
     */
    /* JADX WARN: Code restructure failed: missing block: B:811:0x1684, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{414358000220923766L, 4397548908532311146L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:813:0x1699, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2167401938392548712L, -457169490153391957L}).toString()) != false) goto L877;
     */
    /* JADX WARN: Code restructure failed: missing block: B:819:0x16cd, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2759948117794689224L, -3247618156871697120L}).toString()) != false) goto L885;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x12fb, code lost:
    
        return new int[]{0, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:821:0x16e7, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1283630495367324218L, 597907206325686199L}).toString()) != false) goto L889;
     */
    /* JADX WARN: Code restructure failed: missing block: B:823:0x1701, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2366747184574471864L, 8897665443932501649L}).toString()) != false) goto L893;
     */
    /* JADX WARN: Code restructure failed: missing block: B:829:0x1735, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{1268098688360419473L, 4090219369828449653L}).toString()) != false) goto L901;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3000042350137806106L, -8584847922570723746L}).toString()) != false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x12c7, code lost:
    
        return new int[]{4, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ee, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{249549956340428278L, 5611063367288226244L}).toString()) != false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x06e3, code lost:
    
        return new int[]{4, 2, 4, 3, 2, 2};
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0026. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0029. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x002c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x002f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0032. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0035. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[] zzm(String str) {
        int hashCode = str.hashCode();
        if (hashCode != 2091) {
            if (hashCode != 2092) {
                if (hashCode != 2102) {
                    if (hashCode != 2103) {
                        if (hashCode != 2111) {
                            if (hashCode != 2112) {
                                if (hashCode != 2135) {
                                    if (hashCode != 2136) {
                                        switch (hashCode) {
                                            case 2083:
                                                break;
                                            case 2084:
                                                if (str.equals(new ObfuscatedString(new long[]{4674635728618691934L, -868629895544852409L}).toString())) {
                                                    return new int[]{1, 4, 2, 3, 4, 1};
                                                }
                                                break;
                                            case 2085:
                                                break;
                                            case 2086:
                                                break;
                                            default:
                                                switch (hashCode) {
                                                    case 2088:
                                                        break;
                                                    case 2094:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1342906748100730132L, -7521548395775898949L}).toString())) {
                                                            return new int[]{3, 4, 4, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2105:
                                                        break;
                                                    case 2114:
                                                        if (str.equals(new ObfuscatedString(new long[]{2732699478985482104L, 5385283023385557575L}).toString())) {
                                                            return new int[]{2, 1, 3, 2, 4, 2};
                                                        }
                                                        break;
                                                    case 2115:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2173474640450110437L, 6698597255077020215L}).toString())) {
                                                            return new int[]{0, 0, 1, 0, 1, 2};
                                                        }
                                                        break;
                                                    case 2116:
                                                        break;
                                                    case 2117:
                                                        break;
                                                    case 2118:
                                                        if (str.equals(new ObfuscatedString(new long[]{5294775656115221529L, 8703934238696909560L}).toString())) {
                                                            return new int[]{1, 3, 1, 3, 4, 2};
                                                        }
                                                        break;
                                                    case 2119:
                                                        break;
                                                    case 2120:
                                                        if (str.equals(new ObfuscatedString(new long[]{5101445568270311986L, -1624880006236247506L}).toString())) {
                                                            return new int[]{4, 4, 2, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2133:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1311475740428002774L, -3699741876600284967L}).toString())) {
                                                            return new int[]{3, 2, 1, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2142:
                                                        break;
                                                    case 2145:
                                                        break;
                                                    case 2152:
                                                        break;
                                                    case 2153:
                                                        break;
                                                    case 2154:
                                                        break;
                                                    case 2155:
                                                        if (str.equals(new ObfuscatedString(new long[]{3450084635246621073L, -871546785980533053L}).toString())) {
                                                            return new int[]{2, 0, 1, 1, 3, 1};
                                                        }
                                                        break;
                                                    case 2156:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1624391915257373412L, 2696167010522937265L}).toString())) {
                                                            return new int[]{2, 3, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2159:
                                                        break;
                                                    case 2162:
                                                        break;
                                                    case 2163:
                                                        if (str.equals(new ObfuscatedString(new long[]{-8837272793454165660L, -6472141768320974109L}).toString())) {
                                                            return new int[]{2, 3, 0, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2164:
                                                        break;
                                                    case 2165:
                                                        break;
                                                    case 2166:
                                                        if (str.equals(new ObfuscatedString(new long[]{2037191110252608999L, -8912725605829105503L}).toString())) {
                                                            return new int[]{1, 0, 1, 0, 0, 2};
                                                        }
                                                        break;
                                                    case 2167:
                                                        if (str.equals(new ObfuscatedString(new long[]{7489687924411990749L, -8595307600288211287L}).toString())) {
                                                            return new int[]{0, 0, 2, 0, 1, 2};
                                                        }
                                                        break;
                                                    case 2177:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2213413013932944670L, -5411327555986770987L}).toString())) {
                                                            return new int[]{0, 1, 4, 2, 2, 1};
                                                        }
                                                        break;
                                                    case 2182:
                                                        break;
                                                    case 2183:
                                                        if (str.equals(new ObfuscatedString(new long[]{3160912130992451038L, -5425183421067574595L}).toString())) {
                                                            return new int[]{0, 0, 2, 0, 0, 2};
                                                        }
                                                        break;
                                                    case 2185:
                                                        break;
                                                    case 2187:
                                                        break;
                                                    case 2198:
                                                        break;
                                                    case 2206:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7783592250653028657L, 5116014996511704322L}).toString())) {
                                                            return new int[]{1, 3, 2, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2208:
                                                        break;
                                                    case 2210:
                                                        break;
                                                    case 2221:
                                                        break;
                                                    case 2222:
                                                        if (str.equals(new ObfuscatedString(new long[]{2533811696137152212L, -1026524037808178255L}).toString())) {
                                                            return new int[]{0, 0, 0, 0, 1, 0};
                                                        }
                                                        break;
                                                    case 2223:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3994844632993055110L, -2480085759759883435L}).toString())) {
                                                            return new int[]{4, 3, 4, 4, 4, 2};
                                                        }
                                                        break;
                                                    case 2243:
                                                        if (str.equals(new ObfuscatedString(new long[]{-4702591890281282781L, 123577947124063882L}).toString())) {
                                                            return new int[]{0, 0, 0, 1, 0, 2};
                                                        }
                                                        break;
                                                    case 2244:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3344848915153481630L, -8429513941052347778L}).toString())) {
                                                            return new int[]{3, 2, 2, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2245:
                                                        break;
                                                    case 2247:
                                                        if (str.equals(new ObfuscatedString(new long[]{7836087175613245011L, -4379176855194675063L}).toString())) {
                                                            return new int[]{4, 2, 4, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2249:
                                                        if (str.equals(new ObfuscatedString(new long[]{8542518757856162448L, -247683035953659288L}).toString())) {
                                                            return new int[]{0, 2, 2, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2252:
                                                        if (str.equals(new ObfuscatedString(new long[]{8450755527486337794L, 844464902815135584L}).toString())) {
                                                            return new int[]{1, 1, 1, 1, 0, 2};
                                                        }
                                                        break;
                                                    case 2266:
                                                        if (str.equals(new ObfuscatedString(new long[]{-9149959219090023177L, 6735684514912696401L}).toString())) {
                                                            return new int[]{3, 4, 0, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2267:
                                                        if (str.equals(new ObfuscatedString(new long[]{3864843794224229196L, -4026831581161460296L}).toString())) {
                                                            return new int[]{1, 1, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2269:
                                                        if (str.equals(new ObfuscatedString(new long[]{-721571234468212969L, -8188490981955759563L}).toString())) {
                                                            return new int[]{2, 2, 0, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2270:
                                                        if (str.equals(new ObfuscatedString(new long[]{6425713850583561780L, -2946375383508200450L}).toString())) {
                                                            return new int[]{1, 1, 0, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2271:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5662682274554515227L, -8220796615383731563L}).toString())) {
                                                            return new int[]{3, 2, 3, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2272:
                                                        if (str.equals(new ObfuscatedString(new long[]{8219647155081545492L, 8183122774622828216L}).toString())) {
                                                            return new int[]{0, 2, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2273:
                                                        if (str.equals(new ObfuscatedString(new long[]{545114684649308366L, -1179212946863325090L}).toString())) {
                                                            return new int[]{3, 3, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2274:
                                                        break;
                                                    case 2277:
                                                        break;
                                                    case 2278:
                                                        break;
                                                    case 2279:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1790842014112307267L, -1285525659969454957L}).toString())) {
                                                            return new int[]{3, 4, 4, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2281:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2143097020606738148L, -8710643723429616751L}).toString())) {
                                                            return new int[]{2, 1, 1, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2282:
                                                        break;
                                                    case 2283:
                                                        if (str.equals(new ObfuscatedString(new long[]{4514199457449680011L, 5898593484552280202L}).toString())) {
                                                            return new int[]{1, 0, 0, 0, 1, 2};
                                                        }
                                                        break;
                                                    case 2285:
                                                        if (str.equals(new ObfuscatedString(new long[]{8729508008170396708L, -4056033124468891455L}).toString())) {
                                                            return new int[]{2, 1, 2, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2286:
                                                        if (str.equals(new ObfuscatedString(new long[]{7927784641359985856L, -3183377571244570038L}).toString())) {
                                                            return new int[]{2, 2, 4, 3, 3, 2};
                                                        }
                                                        break;
                                                    case 2288:
                                                        if (str.equals(new ObfuscatedString(new long[]{8155857976105029002L, 337238746568967959L}).toString())) {
                                                            return new int[]{4, 4, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2290:
                                                        if (str.equals(new ObfuscatedString(new long[]{-4963956149239399383L, -3867927244104232315L}).toString())) {
                                                            return new int[]{3, 1, 1, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2307:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1116178232425338648L, -7671657892873824178L}).toString())) {
                                                            return new int[]{0, 1, 0, 1, 1, 0};
                                                        }
                                                        break;
                                                    case 2314:
                                                        break;
                                                    case 2316:
                                                        break;
                                                    case 2317:
                                                        break;
                                                    case 2331:
                                                        if (str.equals(new ObfuscatedString(new long[]{3991016083154126872L, 2925277767546953739L}).toString())) {
                                                            return new int[]{3, 1, 3, 3, 2, 4};
                                                        }
                                                        break;
                                                    case 2332:
                                                        if (str.equals(new ObfuscatedString(new long[]{1774940194374466456L, 5877618258841055781L}).toString())) {
                                                            return new int[]{1, 1, 1, 1, 1, 2};
                                                        }
                                                        break;
                                                    case 2339:
                                                        if (str.equals(new ObfuscatedString(new long[]{2060056752068355164L, -3259437001139611260L}).toString())) {
                                                            return new int[]{1, 2, 2, 3, 4, 2};
                                                        }
                                                        break;
                                                    case 2340:
                                                        break;
                                                    case 2341:
                                                        if (str.equals(new ObfuscatedString(new long[]{-8676276029622290143L, -6137452678503905379L}).toString())) {
                                                            return new int[]{1, 1, 3, 2, 2, 3};
                                                        }
                                                        break;
                                                    case 2342:
                                                        if (str.equals(new ObfuscatedString(new long[]{4655583620875709630L, -233406561018466246L}).toString())) {
                                                            return new int[]{3, 2, 2, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2344:
                                                        if (str.equals(new ObfuscatedString(new long[]{753916810952780769L, -2237340601315316545L}).toString())) {
                                                            return new int[]{3, 2, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2345:
                                                        if (str.equals(new ObfuscatedString(new long[]{4203509381268957317L, -2876464238901923918L}).toString())) {
                                                            return new int[]{4, 2, 3, 3, 4, 3};
                                                        }
                                                        break;
                                                    case 2346:
                                                        break;
                                                    case 2347:
                                                        if (str.equals(new ObfuscatedString(new long[]{-6212182185459910323L, -950257295074886526L}).toString())) {
                                                            return new int[]{0, 1, 1, 2, 1, 2};
                                                        }
                                                        break;
                                                    case 2363:
                                                        break;
                                                    case 2371:
                                                        if (str.equals(new ObfuscatedString(new long[]{7108479271797974642L, -9145663395234069957L}).toString())) {
                                                            return new int[]{2, 4, 3, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2373:
                                                        break;
                                                    case 2374:
                                                        if (str.equals(new ObfuscatedString(new long[]{7118100701005769917L, -2603856405003767492L}).toString())) {
                                                            return new int[]{0, 3, 2, 3, 4, 2};
                                                        }
                                                        break;
                                                    case 2394:
                                                        if (str.equals(new ObfuscatedString(new long[]{8198814720849814582L, 165677070420299979L}).toString())) {
                                                            return new int[]{3, 2, 1, 1, 1, 2};
                                                        }
                                                        break;
                                                    case 2396:
                                                        if (str.equals(new ObfuscatedString(new long[]{-4568491665207160826L, 7645018576259970763L}).toString())) {
                                                            return new int[]{2, 1, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2397:
                                                        if (str.equals(new ObfuscatedString(new long[]{4799016923960179497L, 2404949764080282054L}).toString())) {
                                                            return new int[]{1, 0, 4, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2398:
                                                        break;
                                                    case 2402:
                                                        break;
                                                    case 2403:
                                                        break;
                                                    case 2407:
                                                        if (str.equals(new ObfuscatedString(new long[]{1124709590271192580L, -8289667523597203292L}).toString())) {
                                                            return new int[]{0, 2, 2, 4, 4, 4};
                                                        }
                                                        break;
                                                    case 2412:
                                                        break;
                                                    case 2414:
                                                        break;
                                                    case 2415:
                                                        if (str.equals(new ObfuscatedString(new long[]{2070512797037290007L, 6647547766871588549L}).toString())) {
                                                            return new int[]{2, 1, 2, 2, 3, 2};
                                                        }
                                                        break;
                                                    case 2421:
                                                        if (str.equals(new ObfuscatedString(new long[]{2708675364500239761L, -1608576826406689899L}).toString())) {
                                                            return new int[]{1, 2, 1, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2422:
                                                        if (str.equals(new ObfuscatedString(new long[]{3685534021879969978L, -2583416892952735690L}).toString())) {
                                                            return new int[]{3, 1, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2423:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2062042820061560048L, 4089721175038405920L}).toString())) {
                                                            return new int[]{2, 2, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2429:
                                                        break;
                                                    case 2431:
                                                        break;
                                                    case 2438:
                                                        break;
                                                    case 2439:
                                                        break;
                                                    case 2440:
                                                        if (str.equals(new ObfuscatedString(new long[]{-6696586288122972173L, -3105422386307077852L}).toString())) {
                                                            return new int[]{0, 1, 0, 1, 0, 2};
                                                        }
                                                        break;
                                                    case 2441:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2946371066821364676L, 775200478976584541L}).toString())) {
                                                            return new int[]{4, 0, 3, 2, 1, 3};
                                                        }
                                                        break;
                                                    case 2442:
                                                        break;
                                                    case 2445:
                                                        break;
                                                    case 2452:
                                                        if (str.equals(new ObfuscatedString(new long[]{1166332432256423852L, -2938005791947990184L}).toString())) {
                                                            return new int[]{3, 3, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2454:
                                                        break;
                                                    case 2455:
                                                        if (str.equals(new ObfuscatedString(new long[]{745957732825996471L, 2663879641653953025L}).toString())) {
                                                            return new int[]{1, 0, 0, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2456:
                                                        if (str.equals(new ObfuscatedString(new long[]{7307516188804085129L, -604193383472527201L}).toString())) {
                                                            return new int[]{2, 0, 0, 1, 3, 2};
                                                        }
                                                        break;
                                                    case 2457:
                                                        if (str.equals(new ObfuscatedString(new long[]{2830640012689290780L, 1139010793039014112L}).toString())) {
                                                            return new int[]{1, 2, 2, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2458:
                                                        break;
                                                    case 2459:
                                                        break;
                                                    case 2462:
                                                        if (str.equals(new ObfuscatedString(new long[]{4427374408764951145L, 367836111355941748L}).toString())) {
                                                            return new int[]{1, 0, 0, 1, 3, 2};
                                                        }
                                                        break;
                                                    case 2463:
                                                        break;
                                                    case 2464:
                                                        break;
                                                    case 2465:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7695355804647619041L, 7324146681958827530L}).toString())) {
                                                            return new int[]{2, 0, 2, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2466:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5802924989231093596L, 5224937384691768071L}).toString())) {
                                                            return new int[]{0, 2, 4, 4, 3, 1};
                                                        }
                                                        break;
                                                    case 2467:
                                                        break;
                                                    case 2468:
                                                        if (str.equals(new ObfuscatedString(new long[]{-9106993268795581905L, -1106277061188685712L}).toString())) {
                                                            return new int[]{2, 1, 2, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2469:
                                                        break;
                                                    case 2470:
                                                        break;
                                                    case 2471:
                                                        break;
                                                    case 2472:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5480178473042864967L, -5360020453104776053L}).toString())) {
                                                            return new int[]{3, 1, 0, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2473:
                                                        if (str.equals(new ObfuscatedString(new long[]{3490903342832467155L, 6875509616536631143L}).toString())) {
                                                            return new int[]{3, 2, 1, 3, 4, 2};
                                                        }
                                                        break;
                                                    case 2474:
                                                        if (str.equals(new ObfuscatedString(new long[]{3456889875989529546L, -8869343425658054723L}).toString())) {
                                                            return new int[]{3, 2, 2, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2475:
                                                        if (str.equals(new ObfuscatedString(new long[]{1718019776427530475L, 1108923750820563119L}).toString())) {
                                                            return new int[]{2, 4, 4, 4, 3, 2};
                                                        }
                                                        break;
                                                    case 2476:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1355723719586461528L, -5509772848795530782L}).toString())) {
                                                            return new int[]{1, 0, 4, 1, 1, 0};
                                                        }
                                                        break;
                                                    case 2477:
                                                        break;
                                                    case 2483:
                                                        if (str.equals(new ObfuscatedString(new long[]{-843738132558358485L, -6932070072032715264L}).toString())) {
                                                            return new int[]{3, 4, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2485:
                                                        break;
                                                    case 2487:
                                                        break;
                                                    case 2488:
                                                        break;
                                                    case 2489:
                                                        if (str.equals(new ObfuscatedString(new long[]{-8849566069440567969L, 487887252957383040L}).toString())) {
                                                            return new int[]{3, 4, 2, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2491:
                                                        break;
                                                    case 2494:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3636330518419042955L, -387688587151125326L}).toString())) {
                                                            return new int[]{2, 1, 4, 3, 0, 4};
                                                        }
                                                        break;
                                                    case 2497:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7050608474410515058L, 9128127466997476571L}).toString())) {
                                                            return new int[]{0, 0, 3, 0, 0, 2};
                                                        }
                                                        break;
                                                    case 2498:
                                                        if (str.equals(new ObfuscatedString(new long[]{3236335624073533235L, 7856077038474154934L}).toString())) {
                                                            return new int[]{2, 2, 4, 3, 2, 2};
                                                        }
                                                        break;
                                                    case DefaultRetryPolicy.DEFAULT_TIMEOUT_MS /* 2500 */:
                                                        break;
                                                    case 2503:
                                                        break;
                                                    case 2508:
                                                        if (str.equals(new ObfuscatedString(new long[]{-6911289596885349980L, 5149470248976632880L}).toString())) {
                                                            return new int[]{0, 0, 1, 2, 4, 2};
                                                        }
                                                        break;
                                                    case 2526:
                                                        if (str.equals(new ObfuscatedString(new long[]{-4835614330315207046L, -3107710253082243528L}).toString())) {
                                                            return new int[]{2, 3, 1, 2, 4, 2};
                                                        }
                                                        break;
                                                    case 2545:
                                                        break;
                                                    case 2549:
                                                        if (str.equals(new ObfuscatedString(new long[]{4451980895403304793L, -143117695968185772L}).toString())) {
                                                            return new int[]{1, 2, 4, 4, 3, 2};
                                                        }
                                                        break;
                                                    case 2550:
                                                        if (str.equals(new ObfuscatedString(new long[]{4557377274251024186L, -2104540078950882216L}).toString())) {
                                                            return new int[]{2, 2, 3, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2551:
                                                        break;
                                                    case 2552:
                                                        if (str.equals(new ObfuscatedString(new long[]{819109053361209001L, 5368048685665967155L}).toString())) {
                                                            return new int[]{2, 1, 2, 3, 2, 1};
                                                        }
                                                        break;
                                                    case 2555:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5440138414145472766L, 385718880443738317L}).toString())) {
                                                            return new int[]{3, 3, 3, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2556:
                                                        if (str.equals(new ObfuscatedString(new long[]{4512611173305255599L, 3414054418827223090L}).toString())) {
                                                            return new int[]{1, 0, 2, 2, 4, 4};
                                                        }
                                                        break;
                                                    case 2557:
                                                        break;
                                                    case 2562:
                                                        if (str.equals(new ObfuscatedString(new long[]{8815390074671810369L, 4182800734651207568L}).toString())) {
                                                            return new int[]{2, 0, 2, 1, 2, 0};
                                                        }
                                                        break;
                                                    case 2563:
                                                        if (str.equals(new ObfuscatedString(new long[]{4184853922463973333L, 4855417340127338071L}).toString())) {
                                                            return new int[]{3, 4, 1, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2564:
                                                        break;
                                                    case 2567:
                                                        if (str.equals(new ObfuscatedString(new long[]{-8167160884882824984L, 3707067432583989860L}).toString())) {
                                                            return new int[]{2, 2, 4, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2569:
                                                        break;
                                                    case 2576:
                                                        if (str.equals(new ObfuscatedString(new long[]{8271901900160184855L, -1297926037075133269L}).toString())) {
                                                            return new int[]{1, 4, 4, 4, 4, 2};
                                                        }
                                                        break;
                                                    case 2611:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1004885954672298068L, 1837180005877252563L}).toString())) {
                                                            return new int[]{0, 3, 2, 3, 1, 2};
                                                        }
                                                        break;
                                                    case 2621:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7801787866239358299L, -304033600078786472L}).toString())) {
                                                            return new int[]{0, 0, 1, 1, 3, 2};
                                                        }
                                                        break;
                                                    case 2625:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5037598048769850484L, -6503702051228497307L}).toString())) {
                                                            return new int[]{1, 0, 0, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2627:
                                                        if (str.equals(new ObfuscatedString(new long[]{-2964366680534570021L, -462484532067776489L}).toString())) {
                                                            return new int[]{1, 0, 0, 1, 3, 3};
                                                        }
                                                        break;
                                                    case 2629:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3931815448104424024L, 1109763945099341191L}).toString())) {
                                                            return new int[]{3, 3, 2, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2638:
                                                        if (str.equals(new ObfuscatedString(new long[]{3064284537169699836L, -3823091601833691544L}).toString())) {
                                                            return new int[]{3, 1, 1, 2, 2, 0};
                                                        }
                                                        break;
                                                    case 2639:
                                                        break;
                                                    case 2640:
                                                        break;
                                                    case 2641:
                                                        break;
                                                    case 2642:
                                                        break;
                                                    case 2644:
                                                        if (str.equals(new ObfuscatedString(new long[]{4025299894387957885L, -1050074232909117827L}).toString())) {
                                                            return new int[]{2, 3, 3, 3, 1, 1};
                                                        }
                                                        break;
                                                    case 2645:
                                                        break;
                                                    case 2646:
                                                        break;
                                                    case 2647:
                                                        break;
                                                    case 2648:
                                                        if (str.equals(new ObfuscatedString(new long[]{2634363084894361341L, 3560000966980297561L}).toString())) {
                                                            return new int[]{0, 1, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2649:
                                                        break;
                                                    case 2650:
                                                        break;
                                                    case 2651:
                                                        if (str.equals(new ObfuscatedString(new long[]{-160773999464909477L, -5996039144228216841L}).toString())) {
                                                            return new int[]{4, 4, 3, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2652:
                                                        if (str.equals(new ObfuscatedString(new long[]{3381694626277204451L, 5982105907715453312L}).toString())) {
                                                            return new int[]{2, 2, 3, 4, 4, 2};
                                                        }
                                                        break;
                                                    case 2655:
                                                        if (str.equals(new ObfuscatedString(new long[]{3517798938600575621L, -2404040746790538591L}).toString())) {
                                                            return new int[]{2, 4, 4, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2656:
                                                        break;
                                                    case 2657:
                                                        if (str.equals(new ObfuscatedString(new long[]{3847425718825229447L, -865521082506342077L}).toString())) {
                                                            return new int[]{2, 2, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2659:
                                                        if (str.equals(new ObfuscatedString(new long[]{6976659382455180163L, 7231389129968029947L}).toString())) {
                                                            return new int[]{2, 3, 2, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2661:
                                                        break;
                                                    case 2662:
                                                        break;
                                                    case 2663:
                                                        break;
                                                    case 2671:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7402210080681098795L, -945362446081405566L}).toString())) {
                                                            return new int[]{3, 2, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2672:
                                                        break;
                                                    case 2675:
                                                        if (str.equals(new ObfuscatedString(new long[]{-5421967306214596830L, 1988223079005794245L}).toString())) {
                                                            return new int[]{3, 4, 1, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2676:
                                                        break;
                                                    case 2678:
                                                        break;
                                                    case 2680:
                                                        break;
                                                    case 2681:
                                                        break;
                                                    case 2682:
                                                        if (str.equals(new ObfuscatedString(new long[]{-9027485837077895360L, -5848616696164828262L}).toString())) {
                                                            return new int[]{3, 1, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2683:
                                                        if (str.equals(new ObfuscatedString(new long[]{2492586495332721397L, -7362085224797952998L}).toString())) {
                                                            return new int[]{3, 2, 4, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2686:
                                                        break;
                                                    case 2688:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3047947032203598427L, 2455649395045201789L}).toString())) {
                                                            return new int[]{2, 4, 1, 0, 2, 2};
                                                        }
                                                        break;
                                                    case 2690:
                                                        break;
                                                    case 2691:
                                                        if (str.equals(new ObfuscatedString(new long[]{8922446241993227433L, -3479030580874458841L}).toString())) {
                                                            return new int[]{0, 0, 0, 0, 0, 0};
                                                        }
                                                        break;
                                                    case 2694:
                                                        if (str.equals(new ObfuscatedString(new long[]{8851244492832864567L, 7637314612957250423L}).toString())) {
                                                            return new int[]{3, 4, 2, 1, 3, 2};
                                                        }
                                                        break;
                                                    case 2700:
                                                        break;
                                                    case 2706:
                                                        if (str.equals(new ObfuscatedString(new long[]{5892289754240939640L, -2127598962568264492L}).toString())) {
                                                            return new int[]{3, 3, 2, 3, 4, 2};
                                                        }
                                                        break;
                                                    case 2718:
                                                        if (str.equals(new ObfuscatedString(new long[]{6874190128444999137L, -8168059187764671411L}).toString())) {
                                                            return new int[]{2, 2, 4, 1, 3, 1};
                                                        }
                                                        break;
                                                    case 2724:
                                                        if (str.equals(new ObfuscatedString(new long[]{-3713861516729665454L, 9105044437061818577L}).toString())) {
                                                            return new int[]{2, 1, 1, 2, 1, 2};
                                                        }
                                                        break;
                                                    case 2725:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1782050967361034994L, 7935923482872510127L}).toString())) {
                                                            return new int[]{1, 2, 3, 4, 3, 2};
                                                        }
                                                        break;
                                                    case 2731:
                                                        break;
                                                    case 2733:
                                                        break;
                                                    case 2735:
                                                        break;
                                                    case 2737:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1312141960378612575L, 5754954173074805227L}).toString())) {
                                                            return new int[]{2, 2, 1, 1, 2, 4};
                                                        }
                                                        break;
                                                    case 2739:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1286414836350436559L, -348801939963862574L}).toString())) {
                                                            return new int[]{0, 2, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2744:
                                                        if (str.equals(new ObfuscatedString(new long[]{-7552620556593935821L, -1653358423490279448L}).toString())) {
                                                            return new int[]{0, 0, 1, 2, 2, 2};
                                                        }
                                                        break;
                                                    case 2751:
                                                        break;
                                                    case 2767:
                                                        break;
                                                    case 2780:
                                                        break;
                                                    case 2803:
                                                        if (str.equals(new ObfuscatedString(new long[]{850740625013118384L, 5292139985370114438L}).toString())) {
                                                            return new int[]{1, 2, 1, 1, 2, 2};
                                                        }
                                                        break;
                                                    case 2828:
                                                        break;
                                                    case 2843:
                                                        break;
                                                    case 2855:
                                                        if (str.equals(new ObfuscatedString(new long[]{-6447078089362087569L, 6473068112491431991L}).toString())) {
                                                            return new int[]{2, 4, 2, 1, 1, 2};
                                                        }
                                                        break;
                                                    case 2867:
                                                        if (str.equals(new ObfuscatedString(new long[]{-1061165915671493715L, -4808444389052273531L}).toString())) {
                                                            return new int[]{4, 4, 4, 3, 2, 2};
                                                        }
                                                        break;
                                                    case 2877:
                                                        break;
                                                    default:
                                                        switch (hashCode) {
                                                            case 2096:
                                                                break;
                                                            case 2097:
                                                                if (str.equals(new ObfuscatedString(new long[]{2779693714318123361L, -4935414026631928847L}).toString())) {
                                                                    return new int[]{2, 2, 2, 2, 1, 2};
                                                                }
                                                                break;
                                                            case 2098:
                                                                if (str.equals(new ObfuscatedString(new long[]{5084193014607467061L, 7075369858280516539L}).toString())) {
                                                                    return new int[]{2, 2, 3, 3, 2, 2};
                                                                }
                                                                break;
                                                            case 2099:
                                                                break;
                                                            case 2100:
                                                                if (str.equals(new ObfuscatedString(new long[]{472102901121374496L, -2411505384257832217L}).toString())) {
                                                                    return new int[]{0, 3, 1, 1, 3, 0};
                                                                }
                                                                break;
                                                            default:
                                                                switch (hashCode) {
                                                                    case 2122:
                                                                        break;
                                                                    case 2123:
                                                                        if (str.equals(new ObfuscatedString(new long[]{4640046849957920598L, 6751938664462248916L}).toString())) {
                                                                            return new int[]{0, 2, 0, 0, 2, 2};
                                                                        }
                                                                        break;
                                                                    case 2124:
                                                                        if (str.equals(new ObfuscatedString(new long[]{694779734303287418L, 7268374106937605605L}).toString())) {
                                                                            return new int[]{3, 2, 0, 0, 2, 2};
                                                                        }
                                                                        break;
                                                                    case 2125:
                                                                        if (str.equals(new ObfuscatedString(new long[]{8725010963445949192L, -6556913305288782653L}).toString())) {
                                                                            return new int[]{1, 2, 4, 4, 2, 2};
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (hashCode) {
                                                                            case 2127:
                                                                                break;
                                                                            case 2128:
                                                                                if (str.equals(new ObfuscatedString(new long[]{4155590358086120584L, -7754872334792441102L}).toString())) {
                                                                                    return new int[]{1, 1, 1, 1, 2, 4};
                                                                                }
                                                                                break;
                                                                            case 2129:
                                                                                if (str.equals(new ObfuscatedString(new long[]{8949371869273781946L, 7229397402860987386L}).toString())) {
                                                                                    return new int[]{3, 2, 1, 1, 2, 2};
                                                                                }
                                                                                break;
                                                                            case 2130:
                                                                                if (str.equals(new ObfuscatedString(new long[]{-7237056789405760762L, -8409537398537562648L}).toString())) {
                                                                                    return new int[]{3, 1, 2, 2, 3, 2};
                                                                                }
                                                                                break;
                                                                            default:
                                                                                switch (hashCode) {
                                                                                    case 2147:
                                                                                        if (str.equals(new ObfuscatedString(new long[]{5670719439823492328L, -7413173282959374320L}).toString())) {
                                                                                            return new int[]{4, 2, 4, 2, 2, 2};
                                                                                        }
                                                                                        break;
                                                                                    case 2149:
                                                                                        if (str.equals(new ObfuscatedString(new long[]{3734220332054201653L, -6817225833681098767L}).toString())) {
                                                                                            return new int[]{0, 1, 0, 0, 0, 2};
                                                                                        }
                                                                                        break;
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                    }
                                } else if (str.equals(new ObfuscatedString(new long[]{3258339504586012703L, 7823534436095900731L}).toString())) {
                                    return new int[]{1, 2, 3, 3, 2, 2};
                                }
                            }
                        }
                    }
                } else if (str.equals(new ObfuscatedString(new long[]{9211810495554687299L, 961491489386186771L}).toString())) {
                    return new int[]{2, 2, 3, 4, 2, 2};
                }
            }
        } else if (str.equals(new ObfuscatedString(new long[]{-3667632966711009820L, -7370937753800086659L}).toString())) {
            return new int[]{1, 1, 1, 2, 2, 2};
        }
        return new int[]{2, 2, 2, 2, 2, 2};
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final synchronized void zza(zzgw zzgwVar, zzhb zzhbVar, boolean z, int i) {
        if (!zzl(zzhbVar, z)) {
            return;
        }
        this.zzn += i;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final synchronized void zzb(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
        boolean z2;
        try {
            if (!zzl(zzhbVar, z)) {
                return;
            }
            if (this.zzl > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzek.zzf(z2);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.zzm);
            this.zzo += i;
            long j = this.zzp;
            long j2 = this.zzn;
            this.zzp = j + j2;
            if (i > 0) {
                this.zzk.zzb((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.zzo < 2000) {
                    if (this.zzp >= 524288) {
                    }
                    zzj(i, this.zzn, this.zzq);
                    this.zzm = elapsedRealtime;
                    this.zzn = 0L;
                }
                this.zzq = this.zzk.zza(0.5f);
                zzj(i, this.zzn, this.zzq);
                this.zzm = elapsedRealtime;
                this.zzn = 0L;
            }
            this.zzl--;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzc(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final synchronized void zzd(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
        try {
            if (!zzl(zzhbVar, z)) {
                return;
            }
            if (this.zzl == 0) {
                this.zzm = SystemClock.elapsedRealtime();
            }
            this.zzl++;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zze(Handler handler, zzyv zzyvVar) {
        zzyvVar.getClass();
        this.zzi.zza(handler, zzyvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zzf(zzyv zzyvVar) {
        this.zzi.zzc(zzyvVar);
    }
}
