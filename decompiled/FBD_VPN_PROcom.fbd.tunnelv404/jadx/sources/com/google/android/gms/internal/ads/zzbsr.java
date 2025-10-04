package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbsr extends zzbsu {
    private static final zzbuw zza = new zzbuw();

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final zzbsy zzb(String str) {
        zzbtv zzbtvVar;
        try {
            try {
                Class<?> cls = Class.forName(str, false, zzbsr.class.getClassLoader());
                if (MediationAdapter.class.isAssignableFrom(cls)) {
                    return new zzbtv((MediationAdapter) cls.getDeclaredConstructor(null).newInstance(null));
                }
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new zzbtv((Adapter) cls.getDeclaredConstructor(null).newInstance(null));
                }
                zzcec.zzj(new ObfuscatedString(new long[]{-9113559672218046828L, 4022944954972125119L, -5548855862618334672L, -6907293583982908963L, -7318992015560090414L, 8032164320386093208L, 5473196220729622077L}).toString() + str + new ObfuscatedString(new long[]{-5498841693973916151L, 236777241090654620L, 5483285704287777066L, 7806765636347564626L}).toString());
                throw new RemoteException();
            } catch (Throwable unused) {
                zzcec.zze(new ObfuscatedString(new long[]{-5391864867036822967L, -7079513321840990302L, 8598908215852957115L, -4112503657162096139L, 4791365825460426199L, -263916418481706179L, -8488455565658949437L, 6475491084109114818L}).toString());
                if (new ObfuscatedString(new long[]{-3251546270808869795L, -3549384411400537916L, 4679665899171846797L, -2408057437420529178L, -2575531770210424165L, 1030737126282267749L, -55763841485157699L}).toString().equals(str)) {
                    zzbtvVar = new zzbtv(new AdMobAdapter());
                } else {
                    if (new ObfuscatedString(new long[]{1536406491074626216L, 5031793051712532758L, 6975744316561492255L, -6019999071534975845L, 1056823497295073258L, 2302396530424558764L, -1454629795158303679L, 4261635241693884372L, 8606657013686093993L, 7300194192260439949L}).toString().equals(str)) {
                        zzbtvVar = new zzbtv(new CustomEventAdapter());
                    }
                    throw new RemoteException();
                }
                return zzbtvVar;
            }
        } catch (Throwable th) {
            zzcec.zzk(new ObfuscatedString(new long[]{6415507109296192576L, 3722784062675016040L, -5449175081402245540L, 8457920753586312575L, 4138186584044939104L, 1421017072668084479L, 2084082500319960507L}).toString() + str + new ObfuscatedString(new long[]{-4133318267226539542L, 879659872708365170L}).toString(), th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final zzbus zzc(String str) {
        return new zzbve((RtbAdapter) Class.forName(str, false, zzbuw.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final boolean zzd(String str) {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, zzbsr.class.getClassLoader()));
        } catch (Throwable unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{8385987959422568393L, -8582124624731331986L, 2046161430658225551L, 2986345758646662426L, -2751982148584678092L, -8343199249985106304L, -6169787579128499032L, 3375540404628720675L, -3448856539178844510L}).toString() + str + new ObfuscatedString(new long[]{-3063659361268509502L, -6659186512900073340L, -1927305197221109033L, -1156749512666901002L, -574690016901983048L, 7225563118914490519L, -1351402296098411858L}).toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsv
    public final boolean zze(String str) {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzbsr.class.getClassLoader()));
        } catch (Throwable unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{-6412169435242469991L, 1052468720198866115L, 5463666155445724870L, 8802517181002075680L, -9061227677176679980L, -4838357165643148189L, -443512131290172608L, 5738732019611063807L}).toString() + str + new ObfuscatedString(new long[]{-5700424995965398137L, -1482285218616511046L, -1975760457841130677L, 3459632575182969613L, -2279881114645104445L, -5164925757979530232L}).toString());
            return false;
        }
    }
}
