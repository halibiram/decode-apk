package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzfrt {
    public static boolean zza(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int zzb(Context context, zzfqr zzfqrVar) {
        int i;
        FileInputStream fileInputStream;
        byte[] bArr;
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        File file = new File(new File(context.getApplicationInfo().dataDir), new ObfuscatedString(new long[]{-7987574109172994907L, 2658344556765134832L}).toString());
        if (!file.exists()) {
            zzfqrVar.zzb(5017, new ObfuscatedString(new long[]{7303525185112000230L, 6259818765352060423L}).toString());
        } else {
            File[] listFiles = file.listFiles(new zzgcj(Pattern.compile(new ObfuscatedString(new long[]{-2173204296059278330L, -2929801838864791050L}).toString(), 2)));
            if (listFiles != null && listFiles.length != 0) {
                try {
                    fileInputStream = new FileInputStream(listFiles[0]);
                    try {
                        bArr = new byte[20];
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    zzd(null, e.toString(), context, zzfqrVar);
                }
                if (fileInputStream.read(bArr) == 20) {
                    byte[] bArr2 = {0, 0};
                    if (bArr[5] == 2) {
                        zzd(bArr, null, context, zzfqrVar);
                    } else {
                        bArr2[0] = bArr[19];
                        bArr2[1] = bArr[18];
                        short s = ByteBuffer.wrap(bArr2).getShort();
                        if (s != 3) {
                            if (s != 40) {
                                if (s != 62) {
                                    if (s != 183) {
                                        if (s != 243) {
                                            zzd(bArr, null, context, zzfqrVar);
                                        } else {
                                            fileInputStream.close();
                                            i = 8;
                                        }
                                    } else {
                                        fileInputStream.close();
                                        i = 6;
                                    }
                                } else {
                                    fileInputStream.close();
                                    i = 7;
                                }
                            } else {
                                fileInputStream.close();
                                i = 3;
                            }
                        } else {
                            fileInputStream.close();
                            i = 5;
                        }
                        if (i == 1000) {
                            String zzc = zzc(context, zzfqrVar);
                            if (TextUtils.isEmpty(zzc)) {
                                zzd(null, new ObfuscatedString(new long[]{6776054599055654902L, 3155118327880859525L, 6846101281050757006L}).toString(), context, zzfqrVar);
                            } else if (zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{-3897592651645893303L, -3604425100366344700L}).toString()) || zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{362223816117120327L, 751490807640362958L}).toString())) {
                                i = 5;
                            } else if (zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{309165582993596087L, -832237860934423804L}).toString())) {
                                i = 7;
                            } else if (zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{3431009005698614087L, -3778116061780548671L, -8670109514382901314L}).toString())) {
                                i = 6;
                            } else if (zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{8197267284612330240L, 3527131423366103411L, -448292455849032374L}).toString()) || zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{-8098315335301888046L, 1065374734187539863L}).toString())) {
                                i = 3;
                            } else if (zzc.equalsIgnoreCase(new ObfuscatedString(new long[]{-650662925582271437L, 1091771148829790248L}).toString())) {
                                i = 8;
                            } else {
                                zzd(null, zzc, context, zzfqrVar);
                            }
                            i = 1;
                        }
                        if (i != 1) {
                            if (i != 3) {
                                if (i != 5) {
                                    if (i != 6) {
                                        if (i != 7) {
                                            if (i != 8) {
                                                obfuscatedString2 = new ObfuscatedString(new long[]{3736159665064604145L, 1312179986323182387L}).toString();
                                                zzfqrVar.zzb(5018, obfuscatedString2);
                                                return i;
                                            }
                                            obfuscatedString = new ObfuscatedString(new long[]{-7217086755847710591L, -1586766491766469936L});
                                        } else {
                                            obfuscatedString = new ObfuscatedString(new long[]{3088776694109966617L, 8914262703801989847L});
                                        }
                                    } else {
                                        obfuscatedString = new ObfuscatedString(new long[]{-3694266236553666582L, -3520947507021144274L});
                                    }
                                } else {
                                    obfuscatedString = new ObfuscatedString(new long[]{-6043822517828034075L, 1744544365028960270L});
                                }
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{-10185375743939925L, 8072369329809517471L});
                            }
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{9181024227373931051L, 100173979901931416L, 4913163129262245294L});
                        }
                        obfuscatedString2 = obfuscatedString.toString();
                        zzfqrVar.zzb(5018, obfuscatedString2);
                        return i;
                    }
                }
                fileInputStream.close();
                i = 1;
                if (i == 1000) {
                }
                if (i != 1) {
                }
                obfuscatedString2 = obfuscatedString.toString();
                zzfqrVar.zzb(5018, obfuscatedString2);
                return i;
            }
            zzfqrVar.zzb(5017, new ObfuscatedString(new long[]{-3286062894444482304L, 685694277865361339L}).toString());
        }
        i = 1000;
        if (i == 1000) {
        }
        if (i != 1) {
        }
        obfuscatedString2 = obfuscatedString.toString();
        zzfqrVar.zzb(5018, obfuscatedString2);
        return i;
    }

    private static final String zzc(Context context, zzfqr zzfqrVar) {
        HashSet hashSet = new HashSet(Arrays.asList(new ObfuscatedString(new long[]{5479827210742867536L, -7628209548092215051L}).toString(), new ObfuscatedString(new long[]{-2157574423225292261L, 6184139703367555483L}).toString()));
        String zza = zzfxs.zzu.zza();
        if (!TextUtils.isEmpty(zza) && hashSet.contains(zza)) {
            return zza;
        }
        try {
            String[] strArr = (String[]) Build.class.getField(new ObfuscatedString(new long[]{-1544198852644509170L, -6928568764155600813L, 1375066493684138656L}).toString()).get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e) {
            zzfqrVar.zzc(2024, 0L, e);
        } catch (NoSuchFieldException e2) {
            zzfqrVar.zzc(2024, 0L, e2);
        }
        String str = Build.CPU_ABI;
        if (str != null) {
            return str;
        }
        return Build.CPU_ABI2;
    }

    private static final void zzd(byte[] bArr, String str, Context context, zzfqr zzfqrVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6860799370803291265L, 8012254040658741063L}).toString());
        sb.append(zzfxs.zzu.zza());
        sb.append(new ObfuscatedString(new long[]{6145642835464299095L, 6468383443638027673L}).toString());
        try {
            String[] strArr = (String[]) Build.class.getField(new ObfuscatedString(new long[]{3982693882532399273L, -7317191776586407259L, -7077134903478422738L}).toString()).get(null);
            if (strArr != null) {
                sb.append(new ObfuscatedString(new long[]{-8942020668957717056L, 3946312018091561929L, -5168393377208331248L}).toString());
                sb.append(Arrays.toString(strArr));
                sb.append(new ObfuscatedString(new long[]{5266614492939235653L, -5548188717784978679L}).toString());
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append(new ObfuscatedString(new long[]{-5317675957647374843L, -6227848024084449010L}).toString());
        sb.append(Build.CPU_ABI);
        sb.append(new ObfuscatedString(new long[]{-7206698482010615109L, -8229885120596258860L, -595962977420536449L}).toString());
        sb.append(Build.CPU_ABI2);
        sb.append(new ObfuscatedString(new long[]{-5477727042837116907L, -4276888895535344504L}).toString());
        if (bArr != null) {
            sb.append(new ObfuscatedString(new long[]{-4247189434795010822L, 6022014393427895768L}).toString());
            sb.append(Arrays.toString(bArr));
            sb.append(new ObfuscatedString(new long[]{2629532386711014216L, -4276369659815779898L}).toString());
        }
        if (str != null) {
            sb.append(new ObfuscatedString(new long[]{1888454243720782033L, 8109071223581442878L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{8744391924031286363L, 1619297662257187770L}).toString());
        }
        zzfqrVar.zzb(4007, sb.toString());
    }
}
