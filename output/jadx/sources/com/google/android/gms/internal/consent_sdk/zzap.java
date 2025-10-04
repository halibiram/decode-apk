package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.SharedPreferences;
import com.google.android.ump.ConsentInformation;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzap {
    static final zzde zza = zzde.zzj(new ObfuscatedString(new long[]{1802164754625895414L, 1432095930298264904L, -8184088358445546714L}).toString(), new ObfuscatedString(new long[]{2510495670205830436L, 8137216025255651163L, -6282266478053632278L, 1020944171626841028L}).toString(), new ObfuscatedString(new long[]{-8332334419334055009L, 8001155399670204700L, 7022180395883893729L}).toString(), new ObfuscatedString(new long[]{2372818965040709204L, 4183882847351237110L, -8822783606205142896L, -7143081796077611330L}).toString());
    private final Application zzb;
    private final SharedPreferences zzc;
    private final Set zzd;

    public zzap(Application application) {
        this.zzb = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences(new ObfuscatedString(new long[]{-2027906746141595990L, -4372418824986907585L, 2785627337117554729L, 9220690161999096264L, 2235951068082183490L, -5939424869615207733L}).toString(), 0);
        this.zzc = sharedPreferences;
        this.zzd = new HashSet(sharedPreferences.getStringSet(new ObfuscatedString(new long[]{1584765256143981224L, -2961855132745233819L, -3285551327650352803L}).toString(), Collections.emptySet()));
    }

    public final int zza() {
        return this.zzc.getInt(new ObfuscatedString(new long[]{4430791609451088756L, -1137613590804966808L, -5330060009022065810L}).toString(), 0);
    }

    public final ConsentInformation.PrivacyOptionsRequirementStatus zzb() {
        return ConsentInformation.PrivacyOptionsRequirementStatus.valueOf(this.zzc.getString(new ObfuscatedString(new long[]{5475169598618317360L, -4407655783242229063L, -4621760967305020986L, 2199615353914872086L, 2742454493821240068L, 4630568443543735582L}).toString(), ConsentInformation.PrivacyOptionsRequirementStatus.UNKNOWN.name()));
    }

    public final Map zzc() {
        String obfuscatedString;
        Set<String> stringSet = this.zzc.getStringSet(new ObfuscatedString(new long[]{-710996303265366101L, 6995637543959389257L, 1187565803114579773L}).toString(), zzde.zzi());
        if (stringSet.isEmpty()) {
            stringSet = zza;
        }
        HashMap hashMap = new HashMap();
        for (String str : stringSet) {
            Application application = this.zzb;
            zzcm zza2 = zzco.zza(application, str);
            if (zza2 == null) {
                String valueOf = String.valueOf(str);
                new ObfuscatedString(new long[]{959647519085834611L, -8306891707469879314L, 6031704589439102572L, 9097861292057514493L}).toString();
                new ObfuscatedString(new long[]{-4704746355396427218L, 1357041549871813753L, -1565683244881073140L, 8485175503835751406L, 7123214665482556905L, -6528477158399978673L}).toString().concat(valueOf);
            } else {
                Object obj = application.getSharedPreferences(zza2.zza, 0).getAll().get(zza2.zzb);
                if (obj == null) {
                    String valueOf2 = String.valueOf(str);
                    new ObfuscatedString(new long[]{3036380358577216104L, 3036941747135408580L, -997516728583928108L, 7155863999800693517L}).toString();
                    new ObfuscatedString(new long[]{-2965075978603383212L, 6142203896388975453L, 2532911066962837242L, -1078987443868978812L}).toString().concat(valueOf2);
                } else {
                    if (obj instanceof Boolean) {
                        if (true != ((Boolean) obj).booleanValue()) {
                            obfuscatedString = new ObfuscatedString(new long[]{1934103463207040509L, 4023205768463822427L}).toString();
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{-2125011741944564617L, -746849301841182440L}).toString();
                        }
                    } else if (obj instanceof Number) {
                        obfuscatedString = obj.toString();
                    } else if (obj instanceof String) {
                        obfuscatedString = (String) obj;
                    } else {
                        String valueOf3 = String.valueOf(str);
                        new ObfuscatedString(new long[]{1239123519818337935L, 4205579962257476034L, 295399466863060228L, 5326604087011501061L}).toString();
                        new ObfuscatedString(new long[]{7040179688070712576L, 4640195919592686922L, -8222961565970304426L, -5712655933508916911L, -469610355943532336L}).toString().concat(valueOf3);
                    }
                    hashMap.put(str, obfuscatedString);
                }
            }
        }
        return hashMap;
    }

    public final Set zzd() {
        return this.zzd;
    }

    public final void zze() {
        zzco.zzb(this.zzb, this.zzd);
        this.zzd.clear();
        this.zzc.edit().remove(new ObfuscatedString(new long[]{6851551852452004214L, 2814258930426615732L, -8427111380731487558L}).toString()).remove(new ObfuscatedString(new long[]{5193191331645995330L, -1230749128005661250L, 2436059642821290809L}).toString()).remove(new ObfuscatedString(new long[]{9041982705889486658L, 3140300188633412799L, -758121503791871039L}).toString()).apply();
    }

    public final void zzf() {
        this.zzc.edit().putStringSet(new ObfuscatedString(new long[]{-6625283020921714906L, 5404798782432858075L, 3467649531936493279L}).toString(), this.zzd).apply();
    }

    public final void zzg(int i) {
        this.zzc.edit().putInt(new ObfuscatedString(new long[]{425912296336310991L, -5746461387793151844L, 8013570315918254232L}).toString(), i).apply();
    }

    public final void zzh(ConsentInformation.PrivacyOptionsRequirementStatus privacyOptionsRequirementStatus) {
        this.zzc.edit().putString(new ObfuscatedString(new long[]{-762980367573033186L, -711363531880722382L, -1356839115040218225L, -7793722329928152935L, 3603309172666239231L, 7920890189053372074L}).toString(), privacyOptionsRequirementStatus.name()).apply();
    }

    public final void zzi(Set set) {
        this.zzc.edit().putStringSet(new ObfuscatedString(new long[]{-332522032635944673L, -2762958857400680350L, -8138746906210326667L}).toString(), set).apply();
    }
}
