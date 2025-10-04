package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzamv implements zzaoj {
    private final List zza;

    public zzamv(int i, List list) {
        this.zza = list;
    }

    private final zzanz zzb(zzaoi zzaoiVar) {
        return new zzanz(zzd(zzaoiVar));
    }

    private final zzaon zzc(zzaoi zzaoiVar) {
        return new zzaon(zzd(zzaoiVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v4 */
    private final List zzd(zzaoi zzaoiVar) {
        boolean z;
        String obfuscatedString;
        int i;
        List list;
        byte[] bArr;
        zzfp zzfpVar = new zzfp(zzaoiVar.zzd);
        ArrayList arrayList = this.zza;
        while (zzfpVar.zzb() > 0) {
            int zzm = zzfpVar.zzm();
            int zzd = zzfpVar.zzd() + zzfpVar.zzm();
            if (zzm == 134) {
                arrayList = new ArrayList();
                int zzm2 = zzfpVar.zzm() & 31;
                for (int i2 = 0; i2 < zzm2; i2++) {
                    String zzA = zzfpVar.zzA(3, zzfwq.zzc);
                    int zzm3 = zzfpVar.zzm();
                    if ((zzm3 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i = zzm3 & 63;
                        obfuscatedString = new ObfuscatedString(new long[]{7536909974201932031L, -528793774029313673L, 6926559224382506353L, 418457466122270846L}).toString();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{-7646731273201789456L, -5796772562031796989L, -4426236497461514121L, -6971916533293599037L}).toString();
                        i = 1;
                    }
                    byte zzm4 = (byte) zzfpVar.zzm();
                    zzfpVar.zzL(1);
                    if (z) {
                        int i3 = zzm4 & SignedBytes.MAX_POWER_OF_TWO;
                        int i4 = zzem.zza;
                        if (i3 != 0) {
                            bArr = new byte[]{1};
                        } else {
                            bArr = new byte[]{0};
                        }
                        list = Collections.singletonList(bArr);
                    } else {
                        list = null;
                    }
                    zzak zzakVar = new zzak();
                    zzakVar.zzW(obfuscatedString);
                    zzakVar.zzN(zzA);
                    zzakVar.zzw(i);
                    zzakVar.zzL(list);
                    arrayList.add(zzakVar.zzac());
                }
            }
            zzfpVar.zzK(zzd);
            arrayList = arrayList;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzaoj
    @Nullable
    public final zzaol zza(int i, zzaoi zzaoiVar) {
        if (i != 2) {
            if (i != 3 && i != 4) {
                if (i != 21) {
                    if (i != 27) {
                        if (i != 36) {
                            if (i != 89) {
                                if (i != 138) {
                                    if (i != 172) {
                                        if (i != 257) {
                                            if (i != 128) {
                                                if (i != 129) {
                                                    if (i != 134) {
                                                        if (i != 135) {
                                                            switch (i) {
                                                                case 15:
                                                                    return new zzanp(new zzamu(false, zzaoiVar.zzb));
                                                                case 16:
                                                                    return new zzanp(new zzand(zzc(zzaoiVar)));
                                                                case 17:
                                                                    return new zzanp(new zzanl(zzaoiVar.zzb));
                                                                default:
                                                                    return null;
                                                            }
                                                        }
                                                    } else {
                                                        return new zzany(new zzano(new ObfuscatedString(new long[]{3327803216865588727L, 59748241161951640L, 3822859930325425069L, 1084811632761091866L}).toString()));
                                                    }
                                                }
                                                return new zzanp(new zzamo(zzaoiVar.zzb));
                                            }
                                        } else {
                                            return new zzany(new zzano(new ObfuscatedString(new long[]{956956605605158949L, 3454712165412158904L, 3057164601615176240L, 3862191067056860464L}).toString()));
                                        }
                                    } else {
                                        return new zzanp(new zzamr(zzaoiVar.zzb));
                                    }
                                } else {
                                    return new zzanp(new zzamw(zzaoiVar.zzb));
                                }
                            } else {
                                return new zzanp(new zzamx(zzaoiVar.zzc));
                            }
                        } else {
                            return new zzanp(new zzanj(zzb(zzaoiVar)));
                        }
                    } else {
                        return new zzanp(new zzanh(zzb(zzaoiVar), false, false));
                    }
                } else {
                    return new zzanp(new zzank());
                }
            } else {
                return new zzanp(new zzanm(zzaoiVar.zzb));
            }
        }
        return new zzanp(new zzana(zzc(zzaoiVar)));
    }

    public zzamv() {
        this(0);
    }

    public zzamv(int i) {
        this.zza = zzgaa.zzl();
    }
}
