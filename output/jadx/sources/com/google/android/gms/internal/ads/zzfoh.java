package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzfoh extends zzfod {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-2534495214619861739L, 8453589018638768645L, 7235668232952205381L}).toString());
    private final zzfof zzb;
    private final zzfoe zzc;
    private zzfqk zze;
    private zzfpi zzf;
    private final List zzd = new ArrayList();
    private boolean zzg = false;
    private boolean zzh = false;
    private final String zzi = UUID.randomUUID().toString();

    public zzfoh(zzfoe zzfoeVar, zzfof zzfofVar) {
        this.zzc = zzfoeVar;
        this.zzb = zzfofVar;
        zzk(null);
        if (zzfofVar.zzd() != zzfog.zza && zzfofVar.zzd() != zzfog.zzc) {
            this.zzf = new zzfpm(zzfofVar.zzi(), null);
        } else {
            this.zzf = new zzfpj(zzfofVar.zza());
        }
        this.zzf.zzk();
        zzfov.zza().zzd(this);
        zzfpb.zza().zzd(this.zzf.zza(), zzfoeVar.zzb());
    }

    private final void zzk(View view) {
        this.zze = new zzfqk(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfod
    public final void zzb(View view, zzfok zzfokVar, @Nullable String str) {
        zzfoy zzfoyVar;
        if (!this.zzh) {
            if (zza.matcher(new ObfuscatedString(new long[]{7809383122324637585L, -756991157600769674L, -8035845515429413242L}).toString()).matches()) {
                Iterator it = this.zzd.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzfoyVar = (zzfoy) it.next();
                        if (zzfoyVar.zzb().get() == view) {
                            break;
                        }
                    } else {
                        zzfoyVar = null;
                        break;
                    }
                }
                if (zzfoyVar == null) {
                    this.zzd.add(new zzfoy(view, zzfokVar, new ObfuscatedString(new long[]{7265056715811217627L, 8196597245368293643L, -5638175068446123228L}).toString()));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4524190894747045807L, 1129830277182047272L, 2409664162439451582L, -680952578515874527L, -6023883603964459444L, 9005558760249087523L, 350832391602720943L, 7299003891569258176L, -4812535663801236357L, 3574859739022123625L, -424362312459567456L, -2830478688617438283L, -4718037673709763596L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfod
    public final void zzc() {
        if (this.zzh) {
            return;
        }
        this.zze.clear();
        if (!this.zzh) {
            this.zzd.clear();
        }
        this.zzh = true;
        zzfpb.zza().zzc(this.zzf.zza());
        zzfov.zza().zze(this);
        this.zzf.zzc();
        this.zzf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfod
    public final void zzd(View view) {
        if (!this.zzh && zzf() != view) {
            zzk(view);
            this.zzf.zzb();
            Collection<zzfoh> zzc = zzfov.zza().zzc();
            if (zzc != null && !zzc.isEmpty()) {
                for (zzfoh zzfohVar : zzc) {
                    if (zzfohVar != this && zzfohVar.zzf() == view) {
                        zzfohVar.zze.clear();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfod
    public final void zze() {
        if (this.zzg) {
            return;
        }
        this.zzg = true;
        zzfov.zza().zzf(this);
        this.zzf.zzi(zzfpc.zzb().zza());
        this.zzf.zze(zzfot.zza().zzb());
        this.zzf.zzg(this, this.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zzf() {
        return (View) this.zze.get();
    }

    public final zzfpi zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zzi;
    }

    public final List zzi() {
        return this.zzd;
    }

    public final boolean zzj() {
        return this.zzg && !this.zzh;
    }
}
