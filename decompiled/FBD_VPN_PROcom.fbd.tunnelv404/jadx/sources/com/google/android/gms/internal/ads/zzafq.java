package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
final class zzafq {
    private static final String[] zza = {new ObfuscatedString(new long[]{-5013713300648227006L, -665219401481809168L, 1175271402200689285L, -7934076523993744979L}).toString(), new ObfuscatedString(new long[]{-762195757367801343L, -6960033463827021005L, -2932980136517746291L, 4260668882075705909L}).toString(), new ObfuscatedString(new long[]{2843198454237105415L, -8147150310605291935L, 6976007759509706163L, 4049638865047313588L}).toString(), new ObfuscatedString(new long[]{6202607495006197154L, -9069675596421888241L, -8734452101856261866L, -3199041597971842452L}).toString()};
    private static final String[] zzb = {new ObfuscatedString(new long[]{576222663221807260L, -9027578076042313110L, -8668328716048834101L, 3273307090208507873L, 2211041621043946946L, 6170921217511372805L, -7271911101317011385L}).toString(), new ObfuscatedString(new long[]{5613996875629988223L, -9018885707557644007L, -7163931360654074543L, 963027872132603376L, 4145010551527825577L, 8956329427549333386L, 4071882370993290466L}).toString(), new ObfuscatedString(new long[]{-714719864191480109L, -2341744467055620828L, 5910613280045060360L, 2669595498502070041L, -6929494732877519286L, 3676405455321698102L}).toString(), new ObfuscatedString(new long[]{-7366445863619230514L, -8702949538491839473L, -2905258946608536212L, 778668381131436662L, 2894018456501735365L, -5993130448528498518L, 3205693344962080521L}).toString()};
    private static final String[] zzc = {new ObfuscatedString(new long[]{-7178323548897826325L, 2363218692646787863L, 5376827510458986782L, -1871657057966753207L}).toString(), new ObfuscatedString(new long[]{6887031890020339063L, 435985141018324723L, -702448240138896041L, 800782026417764830L}).toString()};

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e5, code lost:
    
        if (r11 == (-1)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e7, code lost:
    
        r11 = -9223372036854775807L;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzafm zza(String str) {
        long j;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            newPullParser.next();
            if (zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{2413693069285993121L, 5153255912936171554L, 8311303535103739394L}).toString())) {
                zzgaa zzl = zzgaa.zzl();
                long j2 = -9223372036854775807L;
                do {
                    newPullParser.next();
                    if (!zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{5221542098286491958L, 9220773678527372878L, -2452861222978244311L}).toString())) {
                        if (zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{-3041387960781476097L, 7759687762193233772L, 633795781297634330L, 7080645427286356981L}).toString())) {
                            zzl = zzb(newPullParser, new ObfuscatedString(new long[]{1351096942022875850L, -5077623796078434641L, -9059582694180935153L}).toString(), new ObfuscatedString(new long[]{-6798838551040088846L, 3778609573972742648L}).toString());
                        } else if (zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{-8303948660351482773L, -3027352517322428572L, 3547701065217881803L, -4401176715876643832L}).toString())) {
                            zzl = zzb(newPullParser, new ObfuscatedString(new long[]{6697313981624182831L, -6553966617712744562L, -2573272516782302242L}).toString(), new ObfuscatedString(new long[]{5156747974162002058L, 8353560478656164052L, -5711745504400643605L}).toString());
                        }
                    } else {
                        String[] strArr = zza;
                        int i = 0;
                        for (int i2 = 0; i2 < 4; i2++) {
                            String zza2 = zzfz.zza(newPullParser, strArr[i2]);
                            if (zza2 != null) {
                                if (Integer.parseInt(zza2) != 1) {
                                    return null;
                                }
                                String[] strArr2 = zzb;
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= 4) {
                                        break;
                                    }
                                    String zza3 = zzfz.zza(newPullParser, strArr2[i3]);
                                    if (zza3 != null) {
                                        j = Long.parseLong(zza3);
                                    } else {
                                        i3++;
                                    }
                                }
                                String[] strArr3 = zzc;
                                while (true) {
                                    if (i < 2) {
                                        String zza4 = zzfz.zza(newPullParser, strArr3[i]);
                                        if (zza4 != null) {
                                            zzl = zzgaa.zzn(new zzafl(new ObfuscatedString(new long[]{3033502544391681462L, -2760333667398135714L, 2150911067786735632L}).toString(), new ObfuscatedString(new long[]{8058620977471513435L, 8776681433074509727L}).toString(), 0L, 0L), new zzafl(new ObfuscatedString(new long[]{4117480589573408806L, -6672923770106654513L, -2676814317310970297L}).toString(), new ObfuscatedString(new long[]{3721402392447456084L, 4486732533518204121L, 647072161561458757L}).toString(), Long.parseLong(zza4), 0L));
                                            break;
                                        }
                                        i++;
                                    } else {
                                        zzl = zzgaa.zzl();
                                        break;
                                    }
                                }
                                j2 = j;
                            }
                        }
                        return null;
                    }
                } while (!zzfz.zzb(newPullParser, new ObfuscatedString(new long[]{168247627139190450L, -3937806309263164935L, -2101443722336332377L}).toString()));
                if (zzl.isEmpty()) {
                    return null;
                }
                return new zzafm(j2, zzl);
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{7868421390423285493L, -455339690718242559L, -7974403718406168921L, -3072740538456469911L, -8924875826915932357L}).toString(), null);
        } catch (zzcc | NumberFormatException | XmlPullParserException unused) {
            zzff.zzf(new ObfuscatedString(new long[]{4055460937445207965L, 1105640263648813200L, -112560765586888878L, -1353106860393457577L}).toString(), new ObfuscatedString(new long[]{7332649207035883355L, -1852348108938258357L, 5104351545481478688L, 9075783921686162337L, -8755620118903714594L}).toString());
            return null;
        }
    }

    private static zzgaa zzb(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        long j2;
        zzfzx zzfzxVar = new zzfzx();
        do {
            String concat = str.concat(new ObfuscatedString(new long[]{-6171410867172346001L, -6391709090342221300L}).toString());
            xmlPullParser.next();
            if (zzfz.zzc(xmlPullParser, concat)) {
                String concat2 = str2.concat(new ObfuscatedString(new long[]{6552925962009379564L, -6491097843659965129L}).toString());
                String concat3 = str2.concat(new ObfuscatedString(new long[]{-1495950158928301313L, 2755407994846978879L, 4743841921373136288L}).toString());
                String concat4 = str2.concat(new ObfuscatedString(new long[]{2012795925071493959L, 1729897156898561841L}).toString());
                String concat5 = str2.concat(new ObfuscatedString(new long[]{7105313791719750356L, 5277264695897220864L}).toString());
                String zza2 = zzfz.zza(xmlPullParser, concat2);
                String zza3 = zzfz.zza(xmlPullParser, concat3);
                String zza4 = zzfz.zza(xmlPullParser, concat4);
                String zza5 = zzfz.zza(xmlPullParser, concat5);
                if (zza2 != null && zza3 != null) {
                    if (zza4 != null) {
                        j = Long.parseLong(zza4);
                    } else {
                        j = 0;
                    }
                    if (zza5 != null) {
                        j2 = Long.parseLong(zza5);
                    } else {
                        j2 = 0;
                    }
                    zzfzxVar.zzf(new zzafl(zza2, zza3, j, j2));
                } else {
                    return zzgaa.zzl();
                }
            }
        } while (!zzfz.zzb(xmlPullParser, str.concat(new ObfuscatedString(new long[]{-8775886679309955781L, 1869869310745933336L, -5938778327499366129L}).toString())));
        return zzfzxVar.zzi();
    }
}
