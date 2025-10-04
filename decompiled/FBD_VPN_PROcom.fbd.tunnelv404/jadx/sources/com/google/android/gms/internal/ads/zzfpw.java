package com.google.android.gms.internal.ads;

import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public final class zzfpw {
    private final HashMap zza = new HashMap();
    private final HashMap zzb = new HashMap();
    private final HashMap zzc = new HashMap();
    private final HashSet zzd = new HashSet();
    private final HashSet zze = new HashSet();
    private final HashSet zzf = new HashSet();
    private final HashMap zzg = new HashMap();
    private final Map zzh = new WeakHashMap();
    private boolean zzi;

    public final View zza(String str) {
        return (View) this.zzc.get(str);
    }

    public final zzfpv zzb(View view) {
        zzfpv zzfpvVar = (zzfpv) this.zzb.get(view);
        if (zzfpvVar != null) {
            this.zzb.remove(view);
        }
        return zzfpvVar;
    }

    public final String zzc(String str) {
        return (String) this.zzg.get(str);
    }

    public final String zzd(View view) {
        if (this.zza.size() == 0) {
            return null;
        }
        String str = (String) this.zza.get(view);
        if (str != null) {
            this.zza.remove(view);
        }
        return str;
    }

    public final HashSet zze() {
        return this.zzf;
    }

    public final HashSet zzf() {
        return this.zze;
    }

    public final void zzg() {
        this.zza.clear();
        this.zzb.clear();
        this.zzc.clear();
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        this.zzg.clear();
        this.zzi = false;
    }

    public final void zzh() {
        this.zzi = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzi() {
        Boolean bool;
        String str;
        zzfov zza = zzfov.zza();
        if (zza != null) {
            for (zzfoh zzfohVar : zza.zzb()) {
                View zzf = zzfohVar.zzf();
                if (zzfohVar.zzj()) {
                    String zzh = zzfohVar.zzh();
                    if (zzf != null) {
                        if (!zzf.isAttachedToWindow()) {
                            str = new ObfuscatedString(new long[]{2247211461069044962L, -771650698144290284L, -7729254464693782811L}).toString();
                        } else {
                            if (zzf.hasWindowFocus()) {
                                this.zzh.remove(zzf);
                                bool = Boolean.FALSE;
                            } else if (this.zzh.containsKey(zzf)) {
                                bool = (Boolean) this.zzh.get(zzf);
                            } else {
                                Map map = this.zzh;
                                Boolean bool2 = Boolean.FALSE;
                                map.put(zzf, bool2);
                                bool = bool2;
                            }
                            if (bool.booleanValue()) {
                                str = new ObfuscatedString(new long[]{-4889865382722851520L, -6408878725654773303L, -745027660805141532L}).toString();
                            } else {
                                HashSet hashSet = new HashSet();
                                View view = zzf;
                                while (true) {
                                    if (view != null) {
                                        String zza2 = zzfpu.zza(view);
                                        if (zza2 != null) {
                                            str = zza2;
                                            break;
                                        }
                                        hashSet.add(view);
                                        Object parent = view.getParent();
                                        if (parent instanceof View) {
                                            view = (View) parent;
                                        } else {
                                            view = null;
                                        }
                                    } else {
                                        this.zzd.addAll(hashSet);
                                        str = null;
                                        break;
                                    }
                                }
                            }
                        }
                        if (str == null) {
                            this.zze.add(zzh);
                            this.zza.put(zzf, zzh);
                            for (zzfoy zzfoyVar : zzfohVar.zzi()) {
                                View view2 = (View) zzfoyVar.zzb().get();
                                if (view2 != null) {
                                    zzfpv zzfpvVar = (zzfpv) this.zzb.get(view2);
                                    if (zzfpvVar != null) {
                                        zzfpvVar.zzc(zzfohVar.zzh());
                                    } else {
                                        this.zzb.put(view2, new zzfpv(zzfoyVar, zzfohVar.zzh()));
                                    }
                                }
                            }
                        } else if (str != new ObfuscatedString(new long[]{-7357949475597975194L, 7186165016429207795L, -2739798716662335959L}).toString()) {
                            this.zzf.add(zzh);
                            this.zzc.put(zzh, zzf);
                            this.zzg.put(zzh, str);
                        }
                    } else {
                        this.zzf.add(zzh);
                        this.zzg.put(zzh, new ObfuscatedString(new long[]{5860835887740873056L, 2820699367043150851L}).toString());
                    }
                }
            }
        }
    }

    public final boolean zzj(View view) {
        if (this.zzh.containsKey(view)) {
            this.zzh.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    public final int zzk(View view) {
        if (this.zzd.contains(view)) {
            return 1;
        }
        if (this.zzi) {
            return 2;
        }
        return 3;
    }
}
