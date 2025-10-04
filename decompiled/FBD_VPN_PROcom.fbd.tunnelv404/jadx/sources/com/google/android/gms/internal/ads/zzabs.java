package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzabs {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzabr zza(byte[] bArr) {
        return zzb(new zzfo(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00db, code lost:
    
        if (r13 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzabr zzb(zzfo zzfoVar, boolean z) {
        int zzc2 = zzc(zzfoVar);
        int zzd = zzd(zzfoVar);
        int zzd2 = zzfoVar.zzd(4);
        String m3333x1db10c9d = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{316345393521599172L, -2963503184285959874L}), new StringBuilder(), zzc2);
        int i = 22;
        if (zzc2 == 5 || zzc2 == 29) {
            zzd = zzd(zzfoVar);
            zzc2 = zzc(zzfoVar);
            if (zzc2 == 22) {
                zzd2 = zzfoVar.zzd(4);
            }
        }
        if (z) {
            int i2 = 3;
            if (zzc2 != 1 && zzc2 != 2 && zzc2 != 3 && zzc2 != 4 && zzc2 != 6 && zzc2 != 7 && zzc2 != 17) {
                switch (zzc2) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw zzcc.zzc(new ObfuscatedString(new long[]{2929282813900783189L, -3136783507335803491L, 245224029065036817L, -2116569715173943771L, 5370197028049639499L}).toString() + zzc2);
                }
            }
            if (zzfoVar.zzo()) {
                zzff.zzf(new ObfuscatedString(new long[]{2451331740270420235L, 8144196425357058801L}).toString(), new ObfuscatedString(new long[]{6243677019104919842L, -9164896106337070374L, -1556475336076466628L, -4651931186112666579L, 2096527709297145660L}).toString());
            }
            if (zzfoVar.zzo()) {
                zzfoVar.zzm(14);
            }
            boolean zzo = zzfoVar.zzo();
            if (zzd2 != 0) {
                if (zzc2 != 6) {
                    if (zzc2 == 20) {
                        zzc2 = 20;
                    }
                    if (zzo) {
                        if (zzc2 == 22) {
                            zzfoVar.zzm(16);
                        } else {
                            i = zzc2;
                        }
                        if (i == 17 || i == 19 || i == 20 || i == 23) {
                            zzfoVar.zzm(3);
                        }
                        zzfoVar.zzm(1);
                    }
                    switch (zzc2) {
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                            int zzd3 = zzfoVar.zzd(2);
                            if (zzd3 == 2) {
                                i2 = zzd3;
                            }
                            throw zzcc.zzc(new ObfuscatedString(new long[]{-6126550647777978461L, -3266689973442398227L, 213942548872553345L, 284560677435320573L}).toString() + i2);
                    }
                }
                zzfoVar.zzm(3);
                if (zzo) {
                }
                switch (zzc2) {
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
        int i3 = zzc[zzd2];
        if (i3 != -1) {
            return new zzabr(zzd, i3, m3333x1db10c9d, null);
        }
        throw zzcc.zza(null, null);
    }

    private static int zzc(zzfo zzfoVar) {
        int zzd = zzfoVar.zzd(5);
        if (zzd == 31) {
            return zzfoVar.zzd(6) + 32;
        }
        return zzd;
    }

    private static int zzd(zzfo zzfoVar) {
        int zzd = zzfoVar.zzd(4);
        if (zzd == 15) {
            if (zzfoVar.zza() >= 24) {
                return zzfoVar.zzd(24);
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{6274301667993021420L, 7975853838365858214L, -1527462057819814309L, 1186984313596257108L, 4263636128590224482L}).toString(), null);
        }
        if (zzd < 13) {
            return zzb[zzd];
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{-486254057886690650L, 9134063571995457428L, -9180970680779791665L, 6207758095041673689L, -2717723529779989130L, 2380889168854986541L, -3504016835732219768L}).toString(), null);
    }
}
